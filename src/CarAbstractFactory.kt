package abstractFactory

interface CarAbstractFactory {
    fun createSedan() : Sedan
    fun createSuv() : Suv
}