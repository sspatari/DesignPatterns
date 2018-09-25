package abstractFactory

class HondaFactory: CarAbstractFactory {
    override var name = "Honda"

    override fun createSedan(): Sedan {
        return Sedan("$name Civic")
    }

    override fun createSuv(): Suv {
        return Suv("$name CR-V")
    }

}