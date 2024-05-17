

class Turma(var nome:String, var abrev: String, var ano:Int) {

    var teste:Int?  = null

    constructor(nome: String, teste: Int) : this(nome, "",123){

        this.teste = teste
        println("$nome e $teste")


    }


    fun getInto(n:String):String{

        return "n: $n\nnome: $nome\nabrev: $abrev\nano: $ano"

    }

    override fun toString(): String {
        return super.toString()
    }
}