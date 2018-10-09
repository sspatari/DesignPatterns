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
        return Sedan.SedanBuilder()
                .setModel("$name S60")
                .setColor("Black")
                .setYear(2008)
                .build()
    }

    override fun createSuv(): Suv {
        return Suv.SuvBuilder()
                .setModel("$name XC90")
                .setColor("Blue")
                .setYear(2010)
                .build()
    }
}