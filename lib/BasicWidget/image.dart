import 'package:flutter/material.dart';
class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          "Image",
        style: TextStyle(
          color: Colors.white
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("gambar/cloud9.png"), // Daftarkan dulu di pubspec.yaml
              width: 50,
              height: 50,
            ),
            SizedBox(height: 20),
            Image(
              image: NetworkImage('https://png.pngtree.com/png-vector/20230531/ourmid/pngtree-character-standing-with-his-eyes-open-and-looking-up-vector-png-image_6791864.png'),
              width: 50,
              height: 50,
            ),
            
          ],
        ),
      ),
      );
  }
}