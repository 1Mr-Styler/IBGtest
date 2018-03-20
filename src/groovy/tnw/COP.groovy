package tnw

enum COP {
    PERSONAL(0), CORPORATE(1)

    COP(int value) {
        this.typeValue = value
    }
    private final String typeValue

    String getCOP() {
        typeValue
    }

    String toString() {
        return typeValue
    }
}