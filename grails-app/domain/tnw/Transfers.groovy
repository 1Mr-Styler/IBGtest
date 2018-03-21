package tnw

class Transfers {

    TransferType type
    Date date = new Date()
    Ibt ibt
    Owt owt
    User user
    String transaction
    User user2

    static constraints = {
        ibt nullable: true
        owt nullable: true
        user2 nullable: true
        transaction nullable: true, unique: true
    }

    def beforeInsert() {
        this.transaction = this.type.name() + (Math.abs(new Random().nextInt() % 99999) + 11111)
    }
}
