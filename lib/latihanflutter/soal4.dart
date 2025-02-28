import 'package:flutter/material.dart';

class Soal4 extends StatelessWidget {
  const Soal4({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text('Soal 4',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: Colors.white,)
        ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                  child: Center(child: Text('Hello',style: TextStyle(color: Colors.white),)),
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                  child: Center(child: Text('Hello',style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
            Center(
              child: FlutterLogo(
                size: 100,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                  child: Center(child: Text('Hello',style: TextStyle(color: Colors.white),)),
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                  child: Center(child: Text('Hello',style: TextStyle(color: Colors.white),)),
                )
              ],
            )
          ]
          ,
          )
    );
  }
}