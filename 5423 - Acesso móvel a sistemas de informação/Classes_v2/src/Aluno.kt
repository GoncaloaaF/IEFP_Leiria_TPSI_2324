open class Aluno: Pessoa {

    var turma: String

    constructor(nome: String, idade: Int, turma:String) : super(nome, idade) {

        this.turma = turma
        super.nome = nome
        super.idade = idade

    }


    override fun getInfo(): String {
        return super.getInfo()
    }

    fun MetodoAluno() {
        println("Aluno")
    }

}


