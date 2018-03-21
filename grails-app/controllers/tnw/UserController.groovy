package tnw

import grails.converters.JSON

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
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }
    }

    def profile() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }
        def user = session['user'] as User

        respond user
    }

    def edit() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }
        def user = session['user'] as User

        respond user
    }

    def settings() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }
        def user = session['user'] as User
        def settings = Settings.findByUser(user)

        def question = params['questions[0][question]']

        if (question != '') {
            def answer = params['questions[0][answer]']
            if (answer && answer != '') {
                user.security = question
                user.answer = answer
                user.save(flush: true)
            }
        }

        if (params.op == 'Save changes') {
            if (params['email_notification_when_internal_message'])
                settings.emailNotificationWhenInternalMessage = 1
            else settings.emailNotificationWhenInternalMessage = 0

            if (params['email_notification_unread_news_available'])
                settings.emailNotificationUnreadNewsAvailable = 1
            else settings.emailNotificationUnreadNewsAvailable = 0

            if (params['email_notification_when_login_fails'])
                settings.emailNotificationWhenLoginFails = 1
            else settings.emailNotificationWhenLoginFails = 0

            if (params['email_notification_when_funds_added'])
                settings.emailNotificationWhenFundsAdded = 1
            else settings.emailNotificationWhenFundsAdded = 0

            if (params['internal_notification_when_executed'])
                settings.internalNotificationWhenExecuted = 1
            else settings.internalNotificationWhenExecuted = 0

            if (params['internal_notification_when_received_transfer'])
                settings.internalNotificationWhenReceivedTransfer = 1
            else settings.internalNotificationWhenReceivedTransfer = 0
        }

        settings.save(flush: true)

        render view: 'settings', model: [userInstance: user, settings: settings]
    }

    def messages() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }
        def user = session['user'] as User

        def conversations = Conversation.findAllByReceiver(user)

        render(view: 'messages',  model: [conversations: conversations])
    }

    def sent() {
        if (session['user'] == null) {
            redirect uri: '/'

            return
        }
        def user = session['user'] as User

        def conversations = Conversation.findAllBySender(user)

        render(view: 'sent', model: [conversations: conversations])
    }

    def compose() {

        if (session['user'] == null) {
            redirect uri: '/'

            return
        }
        def user = session['user'] as User

        def userIsAdmin = user.username == 'admin'

        if (params.subject) {
            def msg = new Messages(
                    user1: user,
                    user2: User.findByUsername('admin'),
                    subject: params.subject
            )

            msg.save(flush: true)

            User receiver

            if (userIsAdmin)
                receiver = User.findByUsername(params.receiver)
            else receiver = User.findByUsername('admin')

            def convo = new Conversation(message: msg, sender: user, receiver: receiver, note: params.body)

            convo.save(flush: true)
            print(convo.errors)

            redirect(action: 'sent')
        }

        render(view: 'compose', model: [userIsAdmin: userIsAdmin])
    }

    def logout() {
        session['user'] = null
        redirect uri: '/'
        return
    }
}
