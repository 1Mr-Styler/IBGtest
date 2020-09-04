package tnw


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
        User user2

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
        if (debitAccount.accountStatus == AccountStatus.BLOCKED) {
            flash.message = "error"
            jerrors << "Your account is restricted at this moment. Please visit the nearest branch or contact your account manager."
        }

        // Check credit account
        def creditAccount = Account.findByNumber(params.account)
        if (!creditAccount) {
            flash.message = "error"
            jerrors << "Recipient account does NOT exist with KuveytTurk  ia."
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


            new Transfers(type: TransferType.IBT, ibt: ibt, user: user, user2: creditAccount.user).save(flush: true)
        }

        render(view: 'ibt', model: [user: user, accounts: accounts, jerrors: jerrors])
    }

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

        if (debitAccount.accountStatus == AccountStatus.BLOCKED) {
            flash.message = "error"
            jerrors << "Your account is restricted at this moment. Please visit the nearest branch or contact your account manager."
        }

        //Check tan
        if (params.tan != '3050') {
            flash.message = "error"
            jerrors << "Incorrect TAN number."
        }

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

        if (!owt.validate()) {
            flash.message = "error"
            jerrors << "No fields should be left empty."
        }

        if (jerrors.size() == 0) {
            flash.message = "success"
            jerrors << "Your request has been received and is being processed."

            owt.ttk = "mfc"
            owt.save(flush: true)

            new Transfers(type: TransferType.OWT, owt: owt, user: user).save(flush: true)
        }

        render(view: 'owt', model: [user: user, accounts: accounts, jerrors: jerrors, owt: owt])

    }

    def processcot(Owt owt) {
        if (owt.ttk == null)
            owt.ttk = "mfc"
        render view: "cot", model: [owtInstance: owt]
    }

    def ttk() {
        if (params.ttk != null) {
            Owt owt = Owt.get(Long.parseLong(params.owt))
            switch (params.ttk) {
                case "mfc":
                    if (params.tk == "31323") {
                        render "t"
                        owt.ttk = "cot"
                        owt.save(flush: true)
                        return
                    }
                    break
                case "cot":
                    if (params.tk == "44345") {
                        render "t"
                        owt.ttk = "tcc"
                        owt.save(flush: true)
                        return
                    }
                    break
                case "tcc":
                    if (params.tk == "99345") {
                        render "t"
                        return
                    }
                    break
                case "imf":
                    if (params.tk == "00393") {
                        render "t"
                        owt.ttk = "imf"
                        owt.save(flush: true)
                        return
                    }
                    break
                case "atc":
                    if (params.tk == "00534") {
                        render "t"
                        owt.ttk = "atc"
                        owt.save(flush: true)
                        return
                    }
                    break
            }
        }

        render "f"
    }
}
