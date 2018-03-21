package tnw

class Settings {

    User user
    int emailNotificationWhenLoginFails = 0
    int emailNotificationWhenFundsAdded = 0
    int internalNotificationWhenExecuted = 0
    int emailNotificationUnreadNewsAvailable = 0
    int emailNotificationWhenInternalMessage = 0
    int internalNotificationWhenReceivedTransfer = 0

    static constraints = {
    }
}
