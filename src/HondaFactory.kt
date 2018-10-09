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
        return Sedan.SedanBuilder()
                .setModel("$name Civic")
                .setColor("Red")
                .setYear(2000)
                .build()
    }

    override fun createSuv(): Suv {
        return Suv.SuvBuilder()
                .setModel("$name CR-V")
                .setColor("White")
                .setYear(2004)
                .build()
    }
}