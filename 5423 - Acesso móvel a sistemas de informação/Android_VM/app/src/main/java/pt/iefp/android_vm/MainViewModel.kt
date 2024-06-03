package pt.iefp.android_vm

import androidx.compose.runtime.MutableLongState
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel

data class Aluno(var nome: String, var turma:String)

class MainViewModel: ViewModel() {
    private val _aluno = MutableLiveData<Aluno>()

    val aluno: LiveData<Aluno>
        get() = _aluno

    init {
        _aluno.value = Aluno("Gonçalo", "Apz+")
    }

    fun mudarNome(nome: String){

        var turma = _aluno.value?.turma?: "Sem turma"
        _aluno.value = Aluno(nome, turma)
    }
}