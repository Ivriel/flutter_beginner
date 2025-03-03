import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class Fakerpackage extends StatelessWidget {
  const Fakerpackage({super.key});

  @override
  Widget build(BuildContext context) {
    print(faker.address);
    return Scaffold(
      appBar: AppBar(
        title: Text("Faker Package"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://source.unsplash.com/random/100x100"),
          ),
          title: Text("${faker.person.name()}"),
          subtitle: Text("${faker.internet.email()}"),
        )
      ),
    );
  }
}