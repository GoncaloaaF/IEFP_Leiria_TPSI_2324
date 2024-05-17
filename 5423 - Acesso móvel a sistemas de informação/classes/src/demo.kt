class demo(var nome:String) {

    init {
        val n = nome.length;
        println("o nome: $nome tem $n letras")
        if (n < 3){
            throw  Exception("o nome tem de ter mais de 3 letras")
        }
    }


    constructor(): this("nome2"){
        println("constructor sec")

    }

    override fun toString(): String {
        return "nome: $nome"
    }





}