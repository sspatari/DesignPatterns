package abstractFactory

interface CarAbstractFactory {
    companion object {
        private var hondaFactory: HondaFactory? = null

        operator fun invoke() : HondaFactory {
            if(hondaFactory == null) {
                hondaFactory = HondaFactory()
            }
            return hondaFactory as HondaFactory
        }
    }
    var name : String
    fun createSedan() : Sedan
    fun createSuv() : Suv

}