import 'package:flutter/material.dart';
import 'image.dart';
class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.yellow,
          appBar: AppBar(
            title: Text(
              "Button",
            style: TextStyle(
              color: Colors.white
            ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red[900],
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: (){
                print("Hello World");
              }, 
              child: Text("Klik Saya",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              ),
          ),
        ),
    );
  }
}