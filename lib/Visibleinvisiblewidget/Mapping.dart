import 'dart:math';
import 'package:flutter/material.dart';

class MappingApp extends StatelessWidget {
  MappingApp({super.key});

  // Membuat daftar KotakWarna
  final List<KotakWarna> allItems = List.generate(
    10,
    (index) => KotakWarna(
      text: "Kotak ${index + 1}", // Tambahkan nomor untuk identifikasi
      warna: Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Extract App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Extract App',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: allItems.map((kotak) => kotak).toList(),
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
      color: warna,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white, // Tambahkan agar teks terlihat di background berwarna
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MappingApp());
}
