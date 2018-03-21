package tnw

class Conversation {

    Messages message
    Date date
    String note
    int opened = 0
    User sender
    User receiver

    static constraints = {
    }

    static mapping = {
        note type: 'text'
    }
}
