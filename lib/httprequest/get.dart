import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class GetPage extends StatefulWidget {
  const GetPage({super.key});

  @override
  State<GetPage> createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {
  late String id;
  late String email;
  late String name;

  @override
  void initState(){
    id="";
    email="";
    name="";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Get Data HTTP Request",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ID:$id",style: TextStyle(fontSize: 20),),
             Text("Email: $email",style: TextStyle(fontSize: 20),),
              Text("Name: $name",style: TextStyle(fontSize: 20),),
            SizedBox(height: 15),
            ElevatedButton(
            onPressed: () async{
              var myresponse = await http.get(Uri.parse("https://reqres.in/api/users/5"));
              if(myresponse.statusCode == 200){
                print("Berhasil Get Data");
                Map<String,dynamic> data = json.decode(myresponse.body) as Map<String, dynamic>;
                setState(() {
                  id= data["data"]["id"].toString();
                  email= data["data"]["email"].toString();
                  name= "${data["data"]["first_name"]} ${data["data"]["last_name"]}";
                });
              } else {
                print("Gagal Get Data");
              }
            }, 
            child: Text("get data")
            )
          ],
        ),
      ),
    );
  }
}