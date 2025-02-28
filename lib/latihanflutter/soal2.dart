import 'package:flutter/material.dart';

class Soal2 extends StatelessWidget {
  const Soal2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          'Soal 2',
          style: TextStyle(
            color: Colors.white
          ),
          ),
          backgroundColor: Colors.blue, 
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert,color: Colors.white,),
            onPressed: () {
            }
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}