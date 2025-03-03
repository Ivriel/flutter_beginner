import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// digunakan ketika ingin mendapatkan data dari api tanpa harus klik functionnya alias otomatis.
class Futurebuilder2 extends StatelessWidget {
 
  List<Map<String,dynamic>> allUser=[];

  Future getAllUser() async {
   try{
      var response = await http.get(Uri.parse('https://reqres.in/api/users'));
      List data = (json.decode(response.body) as Map<String, dynamic>)["data"];
      data.forEach((element){
        allUser.add(element);
      });
      print(allUser);
   } catch (e){
      print("Terjadi Error: $e");
   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Future Builder HTTP Request",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: getAllUser(), // setelah dibuka pagenya langsung jalankan function
        builder: (context,snapshot) { // pakai snapshot buat mengetahui apakah datanya sedang loading di database
          if(snapshot.connectionState== ConnectionState.waiting){
            return Center(
              child: Text("Loading..."),
              );
          } else {
          return ListView.builder(
            itemCount: allUser.length,
            itemBuilder: (context,index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[300],
                backgroundImage: NetworkImage("${allUser[index]["avatar"]}"),
              ),
              title: Text("${allUser[index]["first_name"]} ${allUser[index]["last_name"]}"),
              subtitle: Text("${allUser[index]["email"]}"),
            ),
            );
          }
        }
      )
    );
  }
}