import 'package:flutter/material.dart';

class SettingActivityPage extends StatelessWidget {
  const SettingActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
        IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back)
          )
        ,
        title: Text(
          "Pengaturan dan aktivitas",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 1),
        children: [
          SizedBox(height:10),
         SizedBox(
            height: 40,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 13),
             child: TextField(
                decoration: InputDecoration(  
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  hintText: "Cari",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
             ),
           ),
         ),
         SizedBox(height: 10),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,   
            children: [
              Text("Akun Anda",),
              Row(
                children: [
                  Icon(Icons.abc),
                  Text("Meta")
                ],
              )
            ],
           ),
         )
        ],
      ),
    );
  }
}