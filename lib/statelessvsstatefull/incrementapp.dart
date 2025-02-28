import 'package:flutter/material.dart';

class Incrementapp extends StatefulWidget {

  @override
  State<Incrementapp> createState() => _IncrementappState();
}

class _IncrementappState extends State<Incrementapp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios),color: Colors.white,),
        title: Text('Increment App',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$nilai",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 ElevatedButton(
                  onPressed: (){
                   nilai++;
                   print(nilai);
                   setState(() {
                     
                   });
                   
              }, child: Icon(Icons.add)
              ),
              ElevatedButton(
                onPressed: (){
                nilai--;
                print(nilai);
                setState(() {
                     
                   });
              }, child: Icon(Icons.remove)
              )
              ],
             )
          ],
        ),
      ),
    );
  }
}