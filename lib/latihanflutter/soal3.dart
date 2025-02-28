import 'package:flutter/material.dart';

class Soal3 extends StatelessWidget {
  const Soal3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text(
          'Soal 2',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Center(  // Membuat konten terpusat secara vertikal dan horizontal
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Vertikal center
            crossAxisAlignment: CrossAxisAlignment.center, // Horizontal center
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Horizontal center
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 20), // Horizontal space between containers
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.yellow,
                  ),
                ],
              ),
              SizedBox(height: 20), // Vertical space between rows
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Horizontal center
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  SizedBox(width: 20), // Horizontal space between containers
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
