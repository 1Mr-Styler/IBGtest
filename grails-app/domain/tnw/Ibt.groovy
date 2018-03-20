package tnw

class Ibt {

    String debit
    String credit
    Double amount
    String descrip
    Date date = new Date()
    AccountStatus status = AccountStatus.PENDING

    static constraints = {
        descrip(nullable: true)
    }
}
