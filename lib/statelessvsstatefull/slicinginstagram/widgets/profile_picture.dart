import 'package:flutter/material.dart';
class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children:[ 
        Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          gradient: LinearGradient(colors: [
            Colors.red,
            Colors.orange
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          )
        ),
      ),
                Container(
    width: 110,
    height: 110,
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('./assets/legionwphd.png'),
      fit: BoxFit.cover
      ),
      borderRadius: BorderRadius.circular(60),
      color: Colors.grey[300],
      border: Border.all(
        color: Colors.white,
        width: 5
      )
    ),
                )
                ]
                );
  }
}