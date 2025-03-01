import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Put itu mereplace
// Patch itu mengupdate

class Putpatch extends StatefulWidget {
  const Putpatch({super.key});

  @override
  State<Putpatch> createState() => _PutpatchState();
}

class _PutpatchState extends State<Putpatch> {
  TextEditingController name=TextEditingController();
  TextEditingController job=TextEditingController();

  String hasilResponse="Belum ada data";
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text(
          "Put/Patch HTTP Request",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: name,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Name"
            ),
          ),
          SizedBox(height: 15),
           TextField(
            controller: job,
            autocorrect: false,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Job"
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: ()async {
              var response = await http.patch(
                Uri.parse('https://reqres.in/api/users/3'),
                body: {
                  "name": name.text,
                  "job": job.text
                }
                );
                var responseData = json.decode(response.body);
                setState(() {
                   hasilResponse = "Response dari Server:\n"
                    "Name: ${responseData["name"]}\n"
                    "Job: ${responseData["job"]}\n";
                });
            },
            child: Text("Submit"),
          ),
          SizedBox(height: 50),
          Divider(),
          SizedBox(height: 10),
          Text(
            hasilResponse,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}