package tnw

enum COP {
    PERSONAL("Personal"), CORPORATE("Corporate"), OFFSHORE("Offshore")

    COP(String value) {
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