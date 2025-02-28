import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'SearchPage.dart';
import 'AddPage.dart';
import 'ReelsPage.dart';
import 'profilepage.dart';


class NavbarInstagramPage extends StatefulWidget {
  NavbarInstagramPage({super.key});

  @override
  State<NavbarInstagramPage> createState() => _NavbarInstagramPageState();
}

class _NavbarInstagramPageState extends State<NavbarInstagramPage> {

  int _selectedIndex = 0;  // Simpan halaman aktif
  final List<Widget> _pages = [
    Homepage(),
    Searchpage(),
    Addpage(),
    Reelspage(),
    ProfileInstagramPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Supaya ga kedorong navbar
      body: IndexedStack(
        index: _selectedIndex, // Tampilkan halaman sesuai index yang dipilih
        children: _pages, // Semua halaman yang ada di dalam _pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.black : Colors.grey, // Warna berubah saat dipilih
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _selectedIndex == 1 ? Colors.black : Colors.grey, // Warna berubah saat dipilih
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: _selectedIndex == 2 ? Colors.black : Colors.grey, // Warna berubah saat dipilih
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
              color: _selectedIndex == 3 ? Colors.black : Colors.grey, // Warna berubah saat dipilih
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 4 ? Colors.black : Colors.transparent, // Lingkaran hitam saat dipilih
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/legionwphd.png'),
                radius: 15,
              ),
            ),
            label: '', // Tidak ada label
          ),
        ],
      ),
    );
  }
}