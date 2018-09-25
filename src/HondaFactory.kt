package abstractFactory

class HondaFactory: CarAbstractFactory {

    override fun createSedan(): Sedan {
        return Sedan("Civic")
    }

    override fun createSuv(): Suv {
        return Suv("CR-V")
    }

}