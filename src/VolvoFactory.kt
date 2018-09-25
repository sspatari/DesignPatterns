package abstractFactory

class VolvoFactory: CarAbstractFactory {
    override fun createSedan(): Sedan {
        return Sedan("S60")
    }

    override fun createSuv(): Suv {
        return Suv("XC90")
    }
}