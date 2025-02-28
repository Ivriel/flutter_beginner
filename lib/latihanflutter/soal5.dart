import 'package:flutter/material.dart';

class Soal5 extends StatelessWidget {
  const Soal5({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: FlutterLogo(),
        title: Text('Soal 5',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(icon: Icon(Icons.more_vert,color: Colors.white,), onPressed: (){}),
        ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                  SizedBox(height: 10),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                 Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                  SizedBox(height: 10),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                )
              ]
          ),
              ),
        ));
  }
}