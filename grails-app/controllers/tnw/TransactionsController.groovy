package tnw

import java.sql.Time

class TransactionsController {

    def index() {

    }

    def process() {
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

        // Check credit account
        def creditAccount = Account.findByNumber(params.account)
        def debitAccount = Account.findByNumber("71282258604")

        if (!creditAccount) {
            flash.message = "error"
            jerrors << "Recipient account does NOT exist with Royal Bankia."
        }

        def description = params.description ?: 'N/A'

        if (jerrors.size() == 0) {
            flash.message = "success"
            jerrors << "Your request has been received and is being processed."

            debitAccount.available -= params.long('amount')
            debitAccount.ledger -= params.long('amount')
            debitAccount.save(flush: true)

            creditAccount.available += params.long('amount')
            creditAccount.ledger += params.long('amount')
            creditAccount.save(flush: true)

            final Random random = new Random();
            final int millisInDay = 24 * 60 * 60 * 1000;
            Time time = new Time((long) random.nextInt(millisInDay));

            def date = Date.parse("d/M/yyyy H:m:s", "$params.dobday/$params.dobmonth/$params.dobyear " + time.toString())

            def ibt = new Ibt(
                    debit: "71282258604",
                    credit: params.account,
                    amount: params.amount,
                    descrip: description,
                    status: AccountStatus.ACTIVE,
                    date: date
            )

            ibt.save(flush: true)


            new Transfers(type: TransferType.IBT, ibt: ibt, user: user, user2: creditAccount.user, date: date).save(flush: true)
        }

        render(view: '/transfer/ibt', model: [user: user, accounts: accounts, jerrors: jerrors])
    }
}
