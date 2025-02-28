import 'package:flutter/material.dart';
class GridviewApp extends StatelessWidget {
  const GridviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gridview App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gridview App',
          style: TextStyle(
            color: Colors.white
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1/2,
          ),
        padding: EdgeInsets.all(10),
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
               Container(
            color: Colors.blue,
          ),
               Container(
            color: Colors.blue,
          ),
               Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.red,
          ),
             Container(
            color: Colors.red,
          ),
             Container(
            color: Colors.red,
          ),
             Container(
            color: Colors.red,
          ),
        ],
        ),
      ),
    );
  }
}