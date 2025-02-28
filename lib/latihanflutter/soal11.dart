import 'package:flutter/material.dart';

class Soal11 extends StatelessWidget {
  const Soal11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        backgroundColor: Colors.blue[400],
        title: Text(
          'Soal 11',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                ),
            )
          ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children:[ 
                ClipOval(
                  child: Container(
                    width: 268,
                    height: 268,
                    color: Color(0xFF0D47A1),
                  ),
                ),
                Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250/2),
                  border: Border.all(color: Colors.white, width: 5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/473b4870-f691-400b-bf19-4d0ecdcc3195/dgk49o7-63d68444-21a5-4f66-9431-b197d95035f9.png/v1/fit/w_512,h_512,q_70,strp/ai_random_art_by_badgersoft_dgk49o7-375w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTEyIiwicGF0aCI6IlwvZlwvNDczYjQ4NzAtZjY5MS00MDBiLWJmMTktNGQwZWNkY2MzMTk1XC9kZ2s0OW83LTYzZDY4NDQ0LTIxYTUtNGY2Ni05NDMxLWIxOTdkOTUwMzVmOS5wbmciLCJ3aWR0aCI6Ijw9NTEyIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.WHAqtFOOPpTelYck9igHqTXDwzYRsrPNaIWQ7MMlqB8')
                    )
                ),
              ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Hello World',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline
              ),
              )
          ],
        ),
      ),
      );
  }
}