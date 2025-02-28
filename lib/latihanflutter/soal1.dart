import 'package:flutter/material.dart';

class Soal1 extends StatelessWidget {
  const Soal1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: FlutterLogo(),
          title: Text("Text Judul",style: TextStyle(color: Colors.white),),
          actions: [
            IconButton(
            onPressed: (){
              print("Klik Lagi");
            },
            icon: Icon(Icons.more_vert,color: Colors.white,),
            )
          ],
        ),
        body: Center(child: Text("Hello World",style: TextStyle(
          fontSize: 50,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold
          ),)),
          
      ),
    );
  }
}