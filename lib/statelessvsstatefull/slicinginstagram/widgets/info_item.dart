import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  InfoItem(this.title,this.value);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),
        ),
        Text(value)
      ],
    );
  }
}
