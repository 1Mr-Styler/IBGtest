package tnw

class Account {

    User user
    Currency currency = Currency.USD
    Double ledger = 0
    Double available = 0
    AccountType accountType = AccountType.Checking
    AccountStatus accountStatus = AccountStatus.PENDING
    String number

    static constraints = {
        number nullable: true, unique: true
    }

    def beforeInsert() {
        this.number = '712' + Math.abs(new Random().nextInt() % 99999999)
    }
}
