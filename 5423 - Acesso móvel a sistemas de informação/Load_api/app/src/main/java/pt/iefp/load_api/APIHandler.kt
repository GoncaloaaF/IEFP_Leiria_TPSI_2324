package pt.iefp.load_api

import retrofit2.Call
import retrofit2.http.GET
import retrofit2.http.Path

interface APIHandler {
    @GET("comments")
    fun getCommnets(): Call<List<Comments>>

    @GET("comments/{id}")
    fun getCommnet(@Path("id") id: Int): Call<Comments>

}