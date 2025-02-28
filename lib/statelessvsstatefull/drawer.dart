import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer",
          style: TextStyle(
            color: Colors.white
          ),
          ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              color: Colors.blue,
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Text(
                "DASHBOARD MENU",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("home"),
                  ),
 ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            ),ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Keranjang"),
              onTap: (){
                print("Menu Keranjang");
              },
            )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}