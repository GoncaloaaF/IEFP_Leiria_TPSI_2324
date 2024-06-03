package pt.iefp.android_vm

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.viewModels
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.getValue
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.ViewModel
import pt.iefp.android_vm.ui.theme.Android_VMTheme


/*

M <- modelo
V <- view
C <- controler


M <- modelo

V <- view


VM <- view model


 */

data class Contacto( var nome:String, var telefone:String) // M


//VM

class MainActivity : ComponentActivity() { // V

    private val viewModel: MainViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            mainPage(viewModel)

        }
    }
}


@Composable
fun mainPage(vm: MainViewModel) {
     val aluno by vm.aluno.observeAsState()


    Column(
        Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement =  Arrangement.Center
    ){
        Text(text = aluno?.nome?: "Sem nome" )
        Text(text = aluno?.turma?: "Sem Turma" )

        Button(onClick = {
            vm.mudarNome("Novo Novo")

        }) {
            Text(text = "Mudar o nome")

        }

    }



}