import 'package:flutter/material.dart';

class Soal7 extends StatelessWidget {
  const Soal7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: FlutterLogo(),
        title: Text(
          'Soal 7',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Row pertama
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 100,
                  ),
                  Column(
                    children: [
                      Text('Flutter Logo'),
                      Text('Image'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50), // Jarak antar row
              // Row kedua (scrollable secara horizontal)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      padding: const EdgeInsets.all(16.0),
                      color: Colors.blueAccent,
                      child: Text(
                        'Item ${index + 1}',
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 50),
                          GridView.builder(
              shrinkWrap: true, // Agar GridView menyesuaikan tinggi berdasarkan isi
              physics: NeverScrollableScrollPhysics(), // Menonaktifkan scroll independen
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150, // Lebar maksimal setiap item
                mainAxisSpacing: 10, // Jarak vertikal antar item
                crossAxisSpacing: 10, // Jarak horizontal antar item
                childAspectRatio: 1, // Membuat item berbentuk kotak
              ),
              itemCount: 8, // Jumlah elemen dalam grid
              itemBuilder: (context, index) {
                // Daftar URL gambar
                final List<String> imageUrls = [
                  'https://via.placeholder.com/150',
                  'https://picsum.photos/150',
                  'https://placekitten.com/150/150',
                  'https://dummyimage.com/150',
                  'https://source.unsplash.com/random/150x150',
                  'https://loremflickr.com/150/150',
                  'https://loremflickr.com/150/150',
                  'https://loremflickr.com/150/150',
                ];

                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15), // Border radius
                    image: DecorationImage(
                      image: NetworkImage(imageUrls[index]), // Gambar dari internet
                      fit: BoxFit.cover, // Agar gambar memenuhi kontainer
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      )
                    ],
                  ),
                  FlutterLogo(size: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue,
                        )
                    ]
                  )
              ],
            ),
            SizedBox(height: 100),
  Container(
  width: double.infinity, // Lebar kolom penuh
  height: 300, // Tinggi maksimum
  child: SingleChildScrollView(
    child: Column(
      children: List.generate(20, (index) {
        return Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            margin: EdgeInsets.only(bottom: 8.0),
            child: Center(child: Text('Item ${index+1}',
            style: TextStyle(color: Colors.white),)),
        );
      }),
    ),
  ),
)

            ],
          ),
        ),
      ),
    );
  }
}
