import java.util.Dictionary

fun main() {
    // Arrays

    var arr1 = arrayOf<Int>() // estatico
    var arr2 = emptyArray<Int>()

    println(arr1.size)
    var novoArr = arr1.plus(78) // nao faz append
    println(novoArr.size)


    var arr_data = arrayOf("10", "11", "12", "13", "14", "15")
    println("----")
    println(arr_data[0])
    println(arr_data.get(0))

    println("----")
   // println(arr_data[10])
   // println(arr_data.get(10))
    println("----")


    arr_data.set(0, "100")
    println(arr_data)


    println("----")

    var marr1 = mutableListOf<Int>()
    println(marr1.size)
    marr1.add(78)
    println(marr1.size)
    println(marr1)

    var marr2 = marr1 + 100

    println(marr2)

    var marr3 = marr1 + marr2

    println(marr3)

    for (i in 0..15){
        marr1.add(i)
    }

    println("------------")
    println(marr1)

    marr1.add(5, 1000)
    println(marr1)

    marr1.addFirst(121112)
    println(marr1)

    marr1.addLast(999999)

    println(marr1)


    val newVal = marr1.sorted()
    println(newVal)


    marr1.sort()

    println(marr1)

    marr1.addAll(5, marr1 )

    println(marr1)


    println("----------- marr1.forEach { i -> -----------")
    marr1.forEach { i ->
        println(i)
    }
    println("----------- for (i in marr1){ -----------")
    for (i in marr1){
        println(i)
    }

    println("----------- marr1.filter -----------")
    val foo = marr1.filter { i -> i > 100 }

    println(foo)


    val x = marr1.map { i -> i * 100 }

    println(x)


    // Dict
    println("----------- Dict -----------")

    var dict = mutableMapOf<String, Int>()

    dict.put("key1", 19)
    println(dict)

    dict["Nova key"] = 23

    println(dict)


    var dict2 = mutableMapOf<String, Int>(
        "key 1" to 30,
        "key 2" to 32,
        "key 3" to 35,
        "key 4" to 40,
        "key 5" to 50,
    )

    println(dict2)

    println("----------- for (i in dict2) -----------")
    for (i in dict2) {
        println(i.key)
        println(i.value)
        println(i)
    }

    println("-----------   marr1.forEach { i -> -----------")

    dict2.forEach { i ->

        println(i.key)
        println(i.value)
        println(i)
    }

    println(dict2.keys)
    println(dict2.values)





}