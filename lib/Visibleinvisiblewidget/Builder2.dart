import 'dart:math';

import 'package:flutter/material.dart';
import '/Visibleinvisiblewidget/Extract.dart';
class Builder2App extends StatelessWidget {
  const Builder2App({super.key});

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
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
            ),
            itemCount: 50,
            itemBuilder: (context, index) => Container(
              color: Color.fromARGB(255, 60 + Random().nextInt(151),  60 + Random().nextInt(151),  60 + Random().nextInt(151)),
              child: Center(child: Text('Kotak ${index + 1}')),
            ),
          ),
      ),
    );
  }
}