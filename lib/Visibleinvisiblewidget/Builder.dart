import 'dart:math';

import 'package:flutter/material.dart';
import '/Visibleinvisiblewidget/Extract.dart';
class BuilderApp extends StatelessWidget {
  const BuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Builder App',
          style: TextStyle(
            color: Colors.white
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          ),
        body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) => KotakWarna(
            text: "Kotak ke - ${index+1}",
             warna:Color.fromARGB(255, 150 + Random().nextInt(200), 150 + Random().nextInt(200), 150 + Random().nextInt(200))
            ),
          ),
      ),
    );
  }
}