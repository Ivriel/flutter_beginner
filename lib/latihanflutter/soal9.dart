import 'package:flutter/material.dart';

class Soal9 extends StatelessWidget {
  const Soal9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        backgroundColor: Colors.blue[400],
        title: Text(
          'Soal 9',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                ),
            )
          ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.green,
            ),
              Container(
              width: 225,
              height: 225,
              color: Colors.red,
            ),
              Container(
              width: 200,
              height: 200,
              color: Colors.purple,
            ),
            Container(
              width: 175,
              height: 175,
              color: Colors.amber,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}