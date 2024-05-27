package pt.iefp.composerdemo

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.Image
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Button
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import pt.iefp.composerdemo.ui.theme.ComposerDemoTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            var nome = remember {
                mutableStateOf("Gonçalo")
            }

            var nome2 by remember {
                mutableStateOf("Gonçalo 2")
            }



            Column {

                Text(text = "Hello world 22",
                    color = Color.Black,
                    fontWeight = FontWeight.ExtraBold,
                    fontSize = 40.sp,
                    fontStyle = FontStyle.Italic
                )

                Text(
                    text = "Hello world",
                    color = Color.Red,
                    fontWeight = FontWeight.ExtraBold,
                    fontSize = 40.sp,
                    fontStyle = FontStyle.Italic,
                    modifier = Modifier.
                )

                Row {
                    Text(
                        text = "txt1",
                        color = Color.Red,
                        fontWeight = FontWeight.ExtraBold,
                        fontSize = 40.sp,
                        fontStyle = FontStyle.Italic
                    )

                    Spacer(modifier = Modifier.width(40.dp))

                    Text(
                        text = "txt2",
                        color = Color.LightGray,
                        fontWeight = FontWeight.ExtraBold,
                        fontSize = 40.sp,
                        fontStyle = FontStyle.Italic
                    )
                }// linha 1

                linha("Nome 1")
                linha("Nome 2")
                linha("Nome 3")


                Spacer(modifier = Modifier.height(40.dp))
                Row {
    Text(
        text = nome.value,
        fontSize = 30.sp,
        modifier = Modifier.padding(start = 10.dp)
    )

    Spacer(modifier = Modifier.width(30.dp))
    Button(onClick = {
        nome.value = "novo nome"

    }) {
        Text(text = "my Btn")
    }


}// linha


                Spacer(modifier = Modifier.height(40.dp))
                Row {
                    Text(
                        text = nome2,
                        fontSize = 30.sp,
                        modifier = Modifier.padding(start = 10.dp)
                    )

                    Spacer(modifier = Modifier.width(30.dp))
                    Button(onClick = {
                        nome2 = "Novo nome"

                    }) {
                        Text(text = "my Btn 2")
                    }


                }// linha








            } // Column principal

        }
    }
}


@Composable
fun linha(nome: String){
    Row(modifier = Modifier.padding(all = 10.dp)) {

        Image(painter = painterResource(id = R.drawable.img2),
            contentDescription = "imagem bla bla bla",
            alpha = 1f,
            contentScale = ContentScale.FillBounds,
            modifier = Modifier

                .size(50.dp)
                .clip(CircleShape)
                .border(
                    color = Color.Red,
                    width = 2.dp,
                    shape = CircleShape
                )
        )

        Spacer(modifier = Modifier.width(10.dp))

        Text(
            text = nome,
            color = Color.LightGray,
            fontWeight = FontWeight.ExtraBold,
            fontSize = 40.sp,
            fontStyle = FontStyle.Italic
        )
    } // Row img e nome

}





@Preview(showBackground = true)
@Composable
fun GreetingPreview() {

}