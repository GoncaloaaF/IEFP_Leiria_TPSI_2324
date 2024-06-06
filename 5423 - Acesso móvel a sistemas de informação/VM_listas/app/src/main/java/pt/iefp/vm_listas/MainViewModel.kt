package pt.iefp.vm_listas

import android.view.animation.Transformation
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.*

data class Aluno(var nome: String, var turma:String)

class MainViewModel: ViewModel() {
    private val _alunos = MutableList(0){}
    val alunos: List<Aluno>
        get() {
            return _alunos.toList() as List<Aluno>
        }



    init {



    }
}