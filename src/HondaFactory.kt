package abstractFactory

class HondaFactory private constructor(): CarAbstractFactory {
    companion object {
        private var hondaFactory: HondaFactory? = null

        operator fun invoke() : HondaFactory {
            if(hondaFactory == null) {
                hondaFactory = HondaFactory()
            }
            return hondaFactory as HondaFactory
        }
    }

    override var name = "Honda"

    override fun createSedan(): Sedan {
        return Sedan("$name Civic")
    }

    override fun createSuv(): Suv {
        return Suv("$name CR-V")
    }
}