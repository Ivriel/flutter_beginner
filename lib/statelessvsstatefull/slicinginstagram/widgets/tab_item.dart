import 'package:flutter/material.dart';


class TabItem extends StatelessWidget {
  TabItem(this.active,this.icon);
  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active ? Colors.black:Colors.grey,
              width: 1
            )
          )
        ),
        child: Icon(
          icon,
          size: 30,
          color: active? Colors.black: Colors.grey,
          )
        ),
    );
  }
}