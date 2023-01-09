import 'package:assignment7_noice_app/screens/collections/collections_screen.dart';
import 'package:assignment7_noice_app/screens/home/home_screen.dart';
import 'package:assignment7_noice_app/screens/profile/profile_screen.dart';
import 'package:assignment7_noice_app/screens/search/search_screen.dart';
import 'package:flutter/material.dart';

class MainPages extends StatefulWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections),
            label: 'Koleksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedFontSize: 12,
        selectedItemColor: Colors.yellow,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

const List<Widget> _pages = <Widget>[
  HomeScreen(),
  SearchScreen(),
  CollectionsScreen(),
  ProfileScreen()
];
