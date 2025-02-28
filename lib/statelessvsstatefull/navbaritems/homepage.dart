import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Homepage",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is a homepage",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 20),
            Icon(Icons.home)
          ],
        ),
      ),
    );
  }
}