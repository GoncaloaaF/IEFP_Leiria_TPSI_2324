open class Pessoa {

    var nome:String
    var idade: Int

    constructor(nome: String, idade: Int){
        this.nome = nome
        this.idade = idade

    }

    open fun getInfo(): String{
        return "nome: $nome, idade: $idade"
    }



}