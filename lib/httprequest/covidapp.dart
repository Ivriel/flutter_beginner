import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CovidApp extends StatefulWidget {
  const CovidApp({super.key});

  @override
  _CovidAppState createState() => _CovidAppState();
}

class _CovidAppState extends State<CovidApp> {
  Map<String, dynamic>? covidData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    const String apiUrl =
        "https://api.api-ninjas.com/v1/covid19?country=Indonesia";
    const String apiKey = "84dac0ZVczTm8WiTQD7lnA==JOvRUffwKwsHaMCy";

    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {"X-Api-Key": apiKey},
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        if (data.isNotEmpty) {
          setState(() {
            covidData = data[0];
            isLoading = false;
          });
        }
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      print("Error: $e");
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("COVID-19 Data")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : covidData == null
              ? const Center(child: Text("Tidak ada data"))
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Negara: ${covidData!['country']}",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Expanded(child: _buildCovidDetails(covidData!)),
                    ],
                  ),
                ),
    );
  }

  Widget _buildCovidDetails(Map<String, dynamic> data) {
    List<MapEntry<String, dynamic>> casesList = [];
    
    if (data.containsKey('cases')) {
      casesList = data['cases'].entries.toList();
    }

    return ListView.builder(
      itemCount: casesList.length,
      itemBuilder: (context, index) {
        final entry = casesList[index];
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: ListTile(
            title: Text("📆 ${entry.key}",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("Total: ${entry.value['total']}, Baru: ${entry.value['new']}"),
          ),
        );
      },
    );
  }
}
