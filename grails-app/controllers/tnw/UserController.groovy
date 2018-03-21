package tnw

import org.hibernate.criterion.Order

class UserController {

    def index() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }

        def user = session['user'] as User

        def accountsCriteria = Account.createCriteria()

        def accounts = accountsCriteria.list {
            eq('user', user)
        }
        int ats = params.int('ats') ?: 1

        // Transactions
        def transfers = Transfers.findAllByUser(user, [sort: 'date', order: 'desc'])
        transfers += Transfers.findAllByUser2(user, [sort: 'date', order: 'desc'])

        def data = ['stat': [], 'cod': []]
        // get transaction type
        for (int i = 0; i < transfers.size(); i++) {

            if (transfers[i].user2 == null) {
                data['cod'][i] = 'debit'
            } else if (user.username == transfers[i].user2.username) data['cod'][i] = 'credit'
            else data['cod'][i] = 'debit'

            if (transfers[i].type == TransferType.OWT) {
                print("pending")
                data['stat'][i] = 'pending'
            } else {
                print(transfers[i].ibt.status == AccountStatus.ACTIVE)

                if (transfers[i].ibt.status == AccountStatus.ACTIVE) {
                    data['stat'][i] = 'success'
                } else data['stat'][i] = 'pending'

            }
        }


        render(view: 'index', model: [user: user, accounts: accounts, ats: ats, transfers: transfers, data: data])
    }

    def cards() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }

    }

    def reports() {

    }

    def logout() {
        session['user'] = null
        redirect uri: '/'
        return
    }
}
