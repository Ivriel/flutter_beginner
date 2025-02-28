import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
          centerTitle: false,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(child: Icon(Icons.camera_alt,color: Colors.white,)),
              Tab(child: Text("Chats",style: TextStyle(color: Colors.white),)),
              Tab(child: Text("Status",style: TextStyle(color: Colors.white),)),
              Tab(child: Text("Calls",style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.camera_alt),
            Center(child: Text("Chats")),
            Center(child: Text("Status")),
            Center(child: Text("Calls")),
          ],
        ),
      )
      );
  }
}