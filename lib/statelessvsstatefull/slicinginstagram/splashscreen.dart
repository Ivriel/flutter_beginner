import 'package:flutter/material.dart';
import '../slicinginstagram/navbar.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool showFirstLogo = true;

  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        showFirstLogo = false; // Ganti logo kedua  setelah 2 detik
      });

      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => NavbarInstagramPage()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: showFirstLogo
            ? Image.asset('assets/instagramlogo.png', height: 200) // logo pertama
            : FlutterLogo(size: 200), // logo kedua
      ),
    );
  }
}
