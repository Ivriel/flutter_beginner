import 'package:flutter/material.dart';
class ColumnApp extends StatelessWidget {
  const ColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column App'),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        backgroundColor: Colors.yellow,
        body: Center(
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    'Container'
                    ),
                    ),
              ),
              SizedBox(width: 20),
             Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container'
                    ),
                    ),
              ),
               SizedBox(width: 20),
             Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Container'
                    ),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}