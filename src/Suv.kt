package abstractFactory

class Suv(private val name : String): Car {
    override fun beep() {
        println("Toot-toot from $name")
    }
}