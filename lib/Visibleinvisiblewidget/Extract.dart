import 'package:flutter/material.dart';

class ExtractApp extends StatelessWidget {
  const ExtractApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Extract App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Extract App'
            ,style: TextStyle(
            color: Colors.white
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                KotakWarna(
                  text: "Merah",
                  warna: Colors.red,
                ),
                 KotakWarna(
                  text: "Kuning",
                  warna: Colors.yellow,
                ),
                 KotakWarna(
                  text: "Hijau",
                  warna: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KotakWarna extends StatelessWidget {
  const KotakWarna({
    Key? key,
    required this.text,
    required this.warna,
  }) : super(key: key);

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: warna, // Gunakan properti warna di sini
      child: Center(
        child: Text(
          text, // Gunakan properti text di sini
          style: TextStyle(
            color: Colors.white, // Tambahkan agar teks terlihat di background berwarna
          ),
        ),
      ),
    );
  }
}
