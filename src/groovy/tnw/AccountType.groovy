package tnw

enum AccountType {
    Checking("Checking"), Savings("Savings"), Investment("Investment")

    AccountType(String value) {
        this.typeValue = value
    }
    private final String typeValue

    String getAccountType() {
        typeValue
    }

    String toString() {
        return name() + " = " + typeValue
    }
}