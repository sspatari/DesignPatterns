package abstractFactory

class Sedan(private val name : String): Car {
    override fun beep() {
        println("Beep-beep from $name")
    }
}