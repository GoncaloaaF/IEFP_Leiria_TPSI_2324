class foo: Aluno {


    constructor(nome: String, idade: Int, turma: String) :
            super(nome, idade, turma) {

    }

    override fun getInfo(): String {
        return super.getInfo()
    }

}