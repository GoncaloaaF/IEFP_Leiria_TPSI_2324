fun main() {


    var p = Porfessor("Joao", 50, "IT")
    var al = Aluno("rita", 16, "PI")

    var al2:Pessoa = Aluno("rita", 16, "PI")


    var lista = listOf(p, al)

    for (i in lista){

        println(i.getInfo())

    }


}