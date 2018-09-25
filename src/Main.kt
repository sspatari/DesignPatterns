package abstractFactory

fun main(args: Array<String>) {

    // Honda
    val hondaSedan = HondaFactory().createSedan()
    val hondaSuv = VolvoFactory().createSuv()

    // Volvo
    val volvoSedan = VolvoFactory().createSedan()
    val volvoSuv = VolvoFactory().createSuv()

    hondaSedan.beep()
    hondaSuv.beep()
    volvoSedan.beep()
    volvoSuv.beep()
}