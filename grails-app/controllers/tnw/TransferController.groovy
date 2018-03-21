package tnw

import grails.converters.JSON

import javax.transaction.Transactional

class TransferController {

    def index() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }
    }

    def ibt() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }

        def user = session['user'] as User

        def accountsCriteria = Account.createCriteria()

        def accounts = accountsCriteria.list {
            eq('user', user)
        }
        render(view: 'ibt', model: [user: user, accounts: accounts])
    }

    def owt() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }

        def user = session['user'] as User

        def accountsCriteria = Account.createCriteria()

        def accounts = accountsCriteria.list {
            eq('user', user)
        }
        render(view: 'owt', model: [user: user, accounts: accounts])
    }

    @Transactional
    def processibt() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }

        def user = session['user'] as User

        def accountsCriteria = Account.createCriteria()

        def accounts = accountsCriteria.list {
            eq('user', user)
        }

        def jerrors = []

        // Check if account is not pending
        def debitAccount = Account.findByNumber(params.debit_from)
        if (!debitAccount) {
            flash.message = "error"
            jerrors << "No debit account selected"
            render(view: 'ibt', model: [user: user, accounts: accounts, jerrors: jerrors])
            return
        }
        if (debitAccount.accountStatus == AccountStatus.PENDING) {
            flash.message = "error"
            jerrors << "Your account is still undergoing review and cannot make transactions at this moment."
        }

        // Check credit account
        def creditAccount = Account.findByNumber(params.account)
        if (!creditAccount) {
            flash.message = "error"
            jerrors << "Recipient account does NOT exist with Intercontinental Bankia."
        }

        //check currency types
        if (creditAccount && debitAccount.currency != creditAccount.currency) {
            flash.message = "error"
            jerrors << "Recipients account currency is different from your selected debit account."
        }

        //Check balance
        if (debitAccount.available < params.long('amount_to_transfer')) {
            flash.message = "error"
            jerrors << "Your available balance is less than the amount you tries to transfer."
        }

        //Check tan
        if (params.tan != '5578') {
            flash.message = "error"
            jerrors << "Incorrect TAN number."
        }

        def description = params.description ?: 'N/A'

        if (jerrors.size() == 0) {
            flash.message = "success"
            jerrors << "Your request has been received and is being processed."

            debitAccount.available -= params.long('amount_to_transfer')
            debitAccount.ledger -= params.long('amount_to_transfer')
            debitAccount.save(flush: true)

            creditAccount.available += params.long('amount_to_transfer')
            creditAccount.ledger += params.long('amount_to_transfer')
            creditAccount.save(flush: true)

            def ibt = new Ibt(
                    debit: params.debit_from,
                    credit: params.account,
                    amount: params.amount_to_transfer,
                    descrip: description,
                    status: AccountStatus.ACTIVE
            )

            ibt.save(flush: true)

            new Transfers(type: TransferType.IBT, ibt: ibt).save(flush: true)
        }

        render(view: 'ibt', model: [user: user, accounts: accounts, jerrors: jerrors])
    }

    @Transactional
    def processowt() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }

        def user = session['user'] as User

        def accountsCriteria = Account.createCriteria()

        def accounts = accountsCriteria.list {
            eq('user', user)
        }

        def jerrors = []

        // Check if account is not pending
        def debitAccount = Account.findByNumber(params.debit_from)
        if (!debitAccount) {
            flash.message = "error"
            jerrors << "No debit account selected."
            render(view: 'owt', model: [user: user, accounts: accounts, jerrors: jerrors])
            return
        }
        if (debitAccount.accountStatus == AccountStatus.PENDING) {
            flash.message = "error"
            jerrors << "Your account is still undergoing review and cannot make transactions at this moment."
        }

        //Check tan
        if (params.tan != '3050') {
            flash.message = "error"
            jerrors << "Incorrect TAN number."
        }

        if (jerrors.size() == 0) {
            flash.message = "success"
            jerrors << "Your request has been received and is being processed."

            def owt = new Owt(
                    bank: params.beneficiary_bank_name,
                    rname: params.beneficiary_customer_name,
                    raddress: params.beneficiary_customer_address,
                    account: params.beneficiary_customer_iban,
                    refmsg: params.information_ref,
                    amount: params.'amount_to_transfer',
                    currency: params.currency,
                    debit: params.debit_from
            )

            new Transfers(type: TransferType.OWT, owt: owt).save(flush: true)
        }

        render(view: 'owt', model: [user: user, accounts: accounts, jerrors: jerrors])

    }
}
