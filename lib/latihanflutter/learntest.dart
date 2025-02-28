import 'package:flutter/material.dart';

class Learntest extends StatelessWidget {
  const Learntest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          ListTile(
            leading: Icon(Icons.album),
            title: Text(
              'Judul Kartu'
            ),
            subtitle: Text('Deskripsi Kartu'),
          ),
          ButtonBar(
            children: <Widget>[
                TextButton(onPressed: (){
                  showDialog(context: context, 
                  builder: (BuildContext context) =>Dialog(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('This is a typical dialog'),
                            const SizedBox(height: 15),
                            ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: const Text('Close'))
                          ],
                        ),
                        ),
                  )
                  );
                }, child: Text('tombol aksi'))
            ],
          )
        ],
    )
    )
    );
  }
}