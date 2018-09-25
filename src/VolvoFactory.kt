package abstractFactory

class VolvoFactory: CarAbstractFactory {
    companion object {
        private var volvoFactory: VolvoFactory? = null

        operator fun invoke() : VolvoFactory {
            if(volvoFactory == null) {
                volvoFactory = VolvoFactory()
            }
            return volvoFactory as VolvoFactory
        }
    }

    override var name = "Volvo"

    override fun createSedan(): Sedan {
        return Sedan("$name S60")
    }

    override fun createSuv(): Suv {
        return Suv("$name XC90")
    }
}