import 'package:flutter/material.dart';
import 'incrementapp.dart';
class BottomsheetPage extends StatelessWidget {
  const BottomsheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Buttom Sheet",
        style: TextStyle(
          color: Colors.white
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton
          (onPressed: (){
            showModalBottomSheet(context: context,
            isDismissible: false,
             builder: (context) => Container(
              height: 500,
              child: ListView(
                children: [
                  ListTile(
                      leading: Icon(Icons.photo),
                      title: Text("Photo"),
                      onTap: ()=>{
                        print("Photo")
                      },
                  ),
                  ListTile(
                    leading: Icon(Icons.music_note_rounded),
                    title: Text("Music"),
                  ),
                  ListTile(
                    leading: Icon(Icons.video_collection),
                    title: Text("Video"),
                  ),
                  ListTile(
                    leading:  Icon(Icons.share),
                    title: Text("share"),
                  ),
                  ListTile(
                    leading: Icon(Icons.plus_one),
                    title: Text("Increment App"),
                    onTap: ()=>{
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder:(context){
                              return Incrementapp();
                            }
                            )
                          )
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.cancel),
                    title: Text("CANCEL"),
                    onTap: ()=>{
                        Navigator.pop(context)
                    },
                  )
                ],
              ),
             )
             );
          }, 
          child: Text("Jomok Button")
          ),
          ),
      ),
    );
  }
}