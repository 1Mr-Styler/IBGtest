package tnw

class UserController {

    def index() {
        def user = session['user'] as User

        def accountsCriteria = Account.createCriteria()

        def accounts = accountsCriteria.list {
            eq('user', user)
        }
        int ats = params.int('ats') ?: 1
        render(view: 'index', model: [user: user, accounts: accounts, ats: ats])
    }

    def cards() {

    }

    def logout() {
        session['user'] = null
        redirect uri: '/'
        return
    }
}
