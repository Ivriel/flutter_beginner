import 'package:flutter/material.dart';
import 'incrementapp.dart';
class DialogApp extends StatelessWidget {
  const DialogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog App',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
     body: Center(
      child: ElevatedButton(
        onPressed: (){
          showDialog(
            context: context, 
            builder: (context) =>AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              title: Text('Increment App'),
              content: Text('Are you sure to jump to the next route?'),
              actions: [
                TextButton(onPressed: (){Navigator.pop(context);}, child: Text('No')),
                ElevatedButton(onPressed: (){Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Incrementapp()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                 child: Text('Yes'),)
              ],
            )
            );
        }, 
        child: Text('Next Page')
        ),
     ),
    );
  }
}