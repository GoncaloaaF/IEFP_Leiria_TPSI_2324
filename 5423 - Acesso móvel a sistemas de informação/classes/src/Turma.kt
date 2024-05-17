

class Turma(var nome:String, var abrev: String, var ano:Int) {

    fun getInto(n:String):String{

        return "n: $n\nnome: $nome\nabrev: $abrev\nano: $ano"

    }
}