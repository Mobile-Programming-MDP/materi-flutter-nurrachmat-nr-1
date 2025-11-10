import 'package:flutter/material.dart';
import 'package:wisata_candi/screens/favorite_screen.dart';
import 'package:wisata_candi/screens/home_screen.dart';
import 'package:wisata_candi/screens/profile_screen.dart';
import 'package:wisata_candi/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //@TODO 1 : Deklarasi Variable / state
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //@TODO 2 : property body, menampilkan widget yg ingin ditampilkan
      body: _children[_currentIndex],

      //@TODO 3 : BottomNavigationBar
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple[50]),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => {
            setState(() {
              _currentIndex = index;
            }),
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.deepPurple),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.deepPurple),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.deepPurple),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.deepPurple),
              label: "Profile",
            ),
          ],
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[100],
          showUnselectedLabels: false,
        ),
      ),
      //@TODO 4 : Buat Data dan Child dari Theme
    );
  }
}
