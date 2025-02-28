import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile page ",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is a profilepage ",style:
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              
            )
            ,),
            SizedBox(height: 20),
            Icon(Icons.person)
          ],
        ),
      ),
    );
  }
}