import java.math.BigInteger

fun main() {

    /*
    comentario
    multilinha
     */

    // comentario numa linha



    println("Hello World!")
    println("Hello World!2")
    println("-----")
    print("msg 1")
    print("msg 2")

    println("-----")
    print("\tmsg 1\n")
    print("msg 2")

    println("-----")
    println("txt32111212121212\tmsg321")
    println("txt1\tmsg1")
    println("txt21\tmsg21")
    println("txt321\tmsg321")


    println("-----")


    println("ola Mundo, " + 2024)


    var idade = 10 // variavel
    val nome_const = 14 // constante

    var nome = "Gonçalo"
    var nome2: String = "Gonçalo"

    println(nome2.length)
    println(nome2[0])
    var nome3 = nome.plus(" Feliciano")

    println(nome)
    println(nome3)

    println("-----")
    println("-----")

    nome = "2147483647"
    println(nome)
    println( nome.toIntOrNull())

    println("-----")
    nome = "2147483648"
    println(nome)
    println( nome.toIntOrNull())
    println( nome.toBigIntegerOrNull())
    println("-----")
    println("-----")

    nome = "9223372036854775808"
    println( nome.toBigIntegerOrNull())


    var teste: Double = 20.34
    println(teste::class.simpleName)


    var d:Double = 10.toDouble()
   // var d2:Double = 10





}