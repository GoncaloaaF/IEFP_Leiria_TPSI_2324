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

    var i = 10
    var f = 10.1f
    var s = "10"
    var soma = (d + f + i)
    println(soma)



    println("-----")
    val time = 10
    if (time == 10) {
        println("Good morning.")
    } else if (time < 20) {
        println("Good day.")
    } else {
        println("Good evening.")
    }

    println("-----")

    var day = 9
    val result = when (day) {
        1 -> "Monday"
        2 -> "Tuesday"
        3 -> "Wednesday"
        4 -> "Thursday"
        5 -> "Friday"
        6 -> "Saturday"
        7 -> "Sunday"
        else -> "Invalid day."
    }
    println(result)
    println("-----")

    day = 2
    when (day) {
        1 -> println("Monday")
        2 -> println("Tuesday")
        3 -> println("Wednesday")
        4 -> println("Thursday")
        5 -> println("Friday")
        6 -> println("Saturday")
        7 -> println("Sunday")
        else -> println("Invalid day.")
    }
    println(result)

    println("-----")

    var j = 0

    while (j < 10) {
        println("o valor de j ainda é menor que 10")
        println("j=" + j)
        j++
    }

    println("-----")
    for (i in 0..10 ){
        println(i)
    }
    println("-----")

    for (i in 20..10 ){
        println(i)
    }

    for (c in 'a'..'f'){

        println(c)
    }
    
}