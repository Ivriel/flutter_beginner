import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  final List<Map<String, int>> data = [
    {"data": 1},
    {"data": 2},
    {"data": 3},
  ];

  late int dataAwal;

  @override
  void initState() {
    super.initState();
    dataAwal = data[1]["data"]!; // Pastikan nilai awal valid
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text(
          "Dropdown",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: DropdownButton<int>(
            value: dataAwal,
            items: data.map((e) {
              return DropdownMenuItem<int>(
                value: e['data']!,
                child: Text("Tampilan - ${e['data']}"),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
