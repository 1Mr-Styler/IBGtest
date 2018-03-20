package tnw

class Transfers {

    TransferType type
    Date date = new Date()
    Ibt ibt
    Owt owt

    static constraints = {
        ibt nullable: true
        owt nullable: true
    }
}
