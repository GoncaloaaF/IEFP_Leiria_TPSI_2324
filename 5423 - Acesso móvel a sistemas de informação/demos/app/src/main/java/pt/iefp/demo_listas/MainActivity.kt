package pt.iefp.demo_listas

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.Button
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

data class Mensagem(var nome:String, var idade:Int?)

class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {

            // @State var myName = ""

            var myName by remember {
                mutableStateOf("")
            }
            var myAge by remember {
                mutableStateOf("")
            }
            
            var mensagens = remember {
                mutableStateListOf<Mensagem>()
            }

            Column {

                Column {

                    Row {

                        OutlinedTextField(
                            value = myName,
                            onValueChange = { it ->
                                myName = it
                            },
                            label = {
                                Text(text = "Nome: ")
                            },
                            modifier = Modifier
                                .weight(3f)
                                .fillMaxWidth()
                        )
                        Spacer(modifier = Modifier.width(8.dp))

                        OutlinedTextField(
                            value = myAge,
                            onValueChange = { it ->
                                myAge = it
                            },
                            label = {
                                Text(text = "Idade: ")
                            },
                            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                            modifier = Modifier
                                .weight(1f)
                                .fillMaxWidth()
                        )
                    }// Row tf

                    Button(onClick = {

                        if (myName.isNotEmpty() && myAge.isNotEmpty()) {

                            mensagens.add(Mensagem(myName, myAge.toInt()))
                        }
                        myName = ""
                        myAge = ""

                    }) {
                        Text(text = "Adicionar",
                            textAlign = TextAlign.Center,
                            modifier = Modifier.fillMaxWidth()
                        )
                    }
                } // Column input


             LazyColumn {
              items(mensagens){ msg ->
                  linha(msg)
                  Spacer(modifier = Modifier.height(8.dp))
              }
             }



            }// main Column
        } //setContent
    }// onCreate


    @Composable
    fun linha(mensagem: Mensagem){

        var f by remember {
            mutableStateOf("foo")
        }

       Column(
           modifier = Modifier
           .fillMaxWidth()
           .clickable {
               f = "novo txt"
               println(mensagem)
           }
               .padding(18.dp)
       ) {
           Text(text = " $f = nome: ${mensagem.nome}",
              fontSize = 20.sp,
               fontWeight = FontWeight.Bold,

           )

           Text(text = "${mensagem.idade}",
               fontFamily = FontFamily.Cursive

           )
       }

    }

} // MainActivity