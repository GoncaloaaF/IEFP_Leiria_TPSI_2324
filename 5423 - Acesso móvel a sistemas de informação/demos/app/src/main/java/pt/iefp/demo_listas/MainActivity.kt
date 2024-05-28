package pt.iefp.demo_listas

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
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
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            var msg by remember {
                mutableStateOf("")
            }

            var myName by remember {
                mutableStateOf("")
            }
            var myAge by remember {
                mutableStateOf(0)
            }


            var listaMsg = remember {
                mutableStateOf(mutableListOf<String>())
            }


            Column {

                Column {

                    Row {

                        TextField(
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
                            value = myAge.toString(),
                            onValueChange = { it ->
                                myAge = it.toInt()
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

                        msg = "$myName -> $myAge "
                        listaMsg.add(msg)

                    }) {
                        Text(
                            text = "Adicionar",
                            textAlign = TextAlign.Center,
                            modifier = Modifier.fillMaxWidth()
                        )
                    }
                } // Column input


                LazyColumn {
                    items(listaMsg) { msg ->
                        linha(msg = msg)
                    }
                }
            }// main Column
        } //setContent
    }// onCreate


    @Composable
    fun linha(msg: String) {
        Text(text = msg)
    }
} // MainActivity


@Preview(showBackground = true)
@Composable
fun GreetingPreview() {

}