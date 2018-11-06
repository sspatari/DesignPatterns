package abstractFactory

interface Car {
    interface Builder {
        fun setModel(model : String) : Builder
        fun setColor(color : String) : Builder
        fun setYear(year: Int) : Builder
        fun build() : Car
    }
    fun beep()

}