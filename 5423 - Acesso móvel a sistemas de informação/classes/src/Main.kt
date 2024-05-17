fun main() {
/*
    val al = Aluno()

    println(al.nome ?: "sem nome")

    al.nome = "Gonçalo"

    println(al.nome)

    println("Hello World!")



    val t = Turma("TPSI Leiria 1", "TPSIL1", 2024)

    println(t.getInto("teste"))
*/

    /*

    val al = Aluno()

    println(al.nome ?: "sem nome")

    al.nome = "Gonçalo"

    println(al.nome ?: "sem nome")

    println(al.nome?.length)
*/


/*
    val t = Turma("nome1", 32424)

    val t2 = Turma("nome2","teste", 32424)

 */
try {
    val d = demo()
    val d2 = demo("Carlos")
    //val d3 = demo("An")
    println("-----")

    println(d2.toString())
    println(d2)

    val d22 = d2.toString()
    val d23 = d2
    println("-----")
    println("-----")
    println("d2 $d2")
    println("d23 $d23")
    println("d22 $d22")

    println("-----")
    d23.nome = "Joana"
    println("d2 $d2")
    println("d23 $d23")
    println("d22 $d22")

    println("-----")
    println("-----")

    val d3 = demo()
    println("d3 $d3")

    mudarNome("Ricardo", d3)

    println("d3 $d3")

    println("-----")
    println("-----")
    println("Aqui")
}catch (e: Exception){
    println(e.message)
}finally {
    println("final do try")
}





}



fun mudarNome(nome: String, d: demo) {
    d.nome = nome
}