import 'package:flutter/material.dart';
class IconApp extends StatelessWidget {
  const IconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text(
            "Icon",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Icon(
            Icons.home,
            size: 50,
            color: Colors.red[900],
          ),
        ),
      ),
    );
  }
}