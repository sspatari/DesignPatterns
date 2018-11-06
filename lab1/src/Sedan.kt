package abstractFactory

class Sedan(private val model : String,
            private val color : String,
            private val year : Int): Car {

    private constructor(builder : Sedan.SedanBuilder)
            : this(builder.model!!, builder.color!!, builder.year)

    class SedanBuilder : Car.Builder{

        var model: String? = null
            private set

        var color: String? = null
            private set

        var year: Int = 0
            private set

        override fun setModel(model: String): SedanBuilder = apply { this.model = model }

        override fun setColor(color: String): SedanBuilder = apply { this.color = color }

        override fun setYear(year: Int): SedanBuilder = apply { this.year = year }

        override fun build() : Sedan = Sedan(this)
    }

    override fun beep() {
        println("Beep-beep from $year $color $model")
    }
}