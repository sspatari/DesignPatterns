package abstractFactory

interface CarAbstractFactory {
    var name : String
    fun createSedan() : Sedan
    fun createSuv() : Suv
}