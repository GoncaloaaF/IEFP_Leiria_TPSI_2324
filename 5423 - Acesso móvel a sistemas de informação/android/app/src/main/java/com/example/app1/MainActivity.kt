package com.example.app1

import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class MainActivity : AppCompatActivity() {


    private lateinit var tvMainHeader: TextView


    private lateinit var etMainNome: EditText
    private lateinit var etMainIdade: EditText
    private lateinit var tvMainMsg: TextView

    private lateinit var btnMainSubmit: Button


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        tvMainHeader = findViewById(R.id.tvMainHeader)
        btnMainSubmit = findViewById(R.id.btnMainSubmit)
        tvMainMsg = findViewById(R.id.tvMainMsg)
        etMainNome  = findViewById(R.id.etMainNome)
        etMainIdade  = findViewById(R.id.etMainIdade)



        tvMainHeader.text = "Novo Texto"

        btnMainSubmit.setOnClickListener {
            var nome = "Anonimo"

            if (etMainNome.text.isNotEmpty()){
                nome = etMainNome.text.toString()
            }

            tvMainMsg.text = "Ola $nome, com ${etMainIdade.text}"
        }



    }
}