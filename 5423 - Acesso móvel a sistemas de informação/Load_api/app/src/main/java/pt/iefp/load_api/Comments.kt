package pt.iefp.load_api

import com.google.gson.annotations.SerializedName

/*
{
  "postId": 1,
  "id": 4,
  "name": "alias odio sit",
  "email": "Lew@alysha.tv",
  "body": "non et atque\noccaecati deserunt quas accusantium unde odit nobis qui voluptatem\nquia voluptas consequuntur itaque dolor\net qui rerum deleniti ut occaecati"
}
 */

class Comments (
    @SerializedName("postId")
    val postId: Int,
    @SerializedName("id")
    val id: Int,
    @SerializedName("name")
    val name: String,
    @SerializedName("email")
    val email: String,
    @SerializedName("body")
    val body: String
)