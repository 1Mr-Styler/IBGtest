package tnw

class Owt {

    String bank
    String rname
    String raddress
    String account
    String refmsg
    long amount
    String currency
    String debit
    String ttk

    static constraints = {
        ttk nullable: true
    }
}
