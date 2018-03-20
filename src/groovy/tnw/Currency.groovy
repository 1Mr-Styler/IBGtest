package tnw

enum Currency {
    USD("US Dollar"), EUR("Euros"), GBP("British Pounds")

    Currency(String value) {
        this.centValue = value
    }
    private final String centValue

    String getCurrency() {
        centValue
    }

    String toString() {
        return name() + " = " + centValue
    }
}