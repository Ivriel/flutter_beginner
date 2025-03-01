import 'package:flutter/material.dart';

class Modelpage extends StatelessWidget {
  const Modelpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Model HTTP Request",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}