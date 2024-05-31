package pt.iefp.nav_v1

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import pt.iefp.nav_v1.ui.theme.Nav_v1Theme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            var myNavController = rememberNavController()

            NavHost(navController = myNavController, startDestination = "home", builder = {

                composable("home") {
                    HomeActivity(myNavController)
                }

                composable("infos/{nome}/{idade}",
                    arguments = listOf(navArgument("nome") { type = NavType.StringType },
                        navArgument("idade") { type = NavType.IntType }
                    )
                ) {

                    val nome = it.arguments?.getString("nome") ?: "Sem nome"
                    val idade = it.arguments?.getInt("idade") ?: -1

                    infoActivity(nome, idade)
                }

            })

        }
    }
}


@Preview(showBackground = true)
@Composable
fun GreetingPreview() {

}