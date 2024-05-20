import kotlin.math.sqrt

class Quadrado {

    private var _lado: Double

    var lado: Double
        get() {
            return _lado
        }
        set(value) {
            _lado = value
        }


    var area: Double
        get() {
            println("Get area")
            return this.lado * this.lado
        }
        set(value) {
            println("set Area")
            this.lado = sqrt(value)
        }

    constructor(lado: Double){
        this._lado = lado
    }

}