import 'package:flutter/material.dart';

class Soal12 extends StatelessWidget {
  const Soal12({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        backgroundColor: Colors.blue[400],
        title: Text(
          'Soal 12',
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              bottom: 20,
              ),
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context,index){
                if(index %2==0) {
                 return Container(
                  width: 100,
                  height: 120,
                  color: Colors.blue[900],
                  margin: EdgeInsets.only(right: 20),
                );
                } else {
                   return Container(
                  width: 100,
                  height: 120,
                  color: Colors.amber,
                  margin: EdgeInsets.only(right: 20),
                );
                }
              }
              ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(20),
                      itemCount: 50,
                      itemBuilder: (context,index){
                if(index%2==0){
            return Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hello ${index+1}',
                  )
                ],
              ),
            );
                } else {
            return Padding(
              padding: const EdgeInsets.only(bottom:25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ),
                  SizedBox(height: 10),
                  Text('Hello ${index+1}')
                ],
              ),
            );
                    }
                      }
                    ),
          ),
        ],
      ),
    );
  }
}