import 'package:flutter/material.dart';
class HelloworldApp extends StatelessWidget {
  const HelloworldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text(
            "Hello World",
          style: TextStyle(
            color: Colors.white
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        ),
    );
  }
}