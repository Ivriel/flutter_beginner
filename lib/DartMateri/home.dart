import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  // Ini adalah StatefulWidget yang berfungsi untuk menampilkan halaman utama
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState(); // Membuat state untuk MyHomePage
}

class MyHomePageState extends State<MyHomePage> {
  // Variabel yang digunakan untuk menyimpan data
  int _counter = 0;

  // Fungsi untuk menambah nilai counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Menampilkan UI aplikasi
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter', // Menampilkan nilai counter
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Memanggil _incrementCounter saat ditekan
        tooltip: 'Increment',
        child: Icon(Icons.add), // Ikon tambah
      ),
    );
  }
}