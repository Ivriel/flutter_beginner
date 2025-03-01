import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Delete extends StatefulWidget {

  const Delete({super.key});

  @override
  State<Delete> createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  String data = "Belum ada data";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async{
              var response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
              var isi = json.decode(response.body) ;
              setState(() {
                data = "Akun : ${isi['data']['first_name']} ${isi['data']['last_name']}";
              });
            }, 
            icon: Icon(Icons.get_app_rounded,color: Colors.white,)
            )
        ],
        title: Text(
          "Delete Data HTTP Request",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(data,style: TextStyle(fontSize: 20),),
          SizedBox(height: 35),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular (5)
              )
            ),
            onPressed: () async{
              var response = await http.delete(Uri.parse("https://reqres.in/api/users/2"));
              if(response.statusCode == 204){
                setState(() {
                  data="Data berhasil dihapus";
                });
              } else {
                print("Gagal Delete Data");
              }
            },
             child: Text("Delete",style: TextStyle(color: Colors.white),)
             )
        ],
      )
    );
  }
}