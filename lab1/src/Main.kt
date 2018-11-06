package abstractFactory

fun main(args: Array<String>) {
    val hondaFactory: CarAbstractFactory = HondaFactory()
    val volvoFactory: CarAbstractFactory = VolvoFactory()

    createCars(hondaFactory)
    createCars(volvoFactory)
}

fun createCars(factory : CarAbstractFactory) {
    val sedanCar = factory.createSedan()
    val suvCar = factory.createSuv()
    sedanCar.beep()
    suvCar.beep()
}