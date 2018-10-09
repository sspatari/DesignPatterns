package abstractFactory

class Suv(private val model : String,
          private val color : String,
          private val year : Int): Car {

    private constructor(builder : Suv.SuvBuilder)
            : this(builder.model!!, builder.color!!, builder.year)

    class SuvBuilder : Car.Builder{

        var model: String? = null
            private set

        var color: String? = null
            private set

        var year: Int = 0
            private set

        override fun setModel(model: String): SuvBuilder = apply { this.model = model }

        override fun setColor(color: String): SuvBuilder = apply { this.color = color }

        override fun setYear(year: Int): SuvBuilder = apply { this.year = year }

        override fun build() : Suv = Suv(this)
    }

    override fun beep() {
        println("Toot-toot from $year $color $model")
    }
}