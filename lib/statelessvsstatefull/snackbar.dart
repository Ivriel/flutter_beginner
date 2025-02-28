import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Snackbar App',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
      ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
              content: Text('Hapus Produk Berhasil'),
              action: SnackBarAction(
                label: 'Cancel', 
                
                textColor: Colors.white,
                onPressed: (){
                  print('Undo');
                }
                ),
                backgroundColor: Colors.yellow[400],
                duration: Duration(seconds: 1),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              );
          },
          child: Text('Show Snackbar')
        ),
      ),
    );
  }
}