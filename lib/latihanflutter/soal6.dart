import 'package:flutter/material.dart';

class Soal6 extends StatelessWidget {
  const Soal6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: FlutterLogo(),
        title: Text('Soal 6',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(icon: Icon(Icons.more_vert,color: Colors.white,), onPressed: (){}),
        ],
        ),
        body: GridView.builder(
          itemCount: 50,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context,index){
            print(index % 1);
                if(index%2==0){
            return Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
           );
                } else {
 return Container(
            width: 150,
            height: 150,
            color: Colors.amber,
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          );
        }
          }
        ),
  );
  }
}