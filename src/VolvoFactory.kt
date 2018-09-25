package abstractFactory

class VolvoFactory: CarAbstractFactory {
    override var name = "Volvo"

    override fun createSedan(): Sedan {
        return Sedan("$name S60")
    }

    override fun createSuv(): Suv {
        return Suv("$name XC90")
    }
}