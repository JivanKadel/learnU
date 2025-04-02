import 'package:flutter/material.dart';
import 'package:learn_u/pages/courses_page.dart';
import 'package:learn_u/pages/home_page.dart';
import 'package:learn_u/pages/profile_page.dart';
import 'package:learn_u/pages/saved_page.dart';
import 'package:learn_u/pages/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPageIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    CoursesPage(),
    SavedPage(),
    ProfilePage(),
  ];
  void _onNavButtonTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ac_unit_sharp, color: Colors.blue),
        elevation: 1,
        title: Text(
          "LearnU",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey.shade600,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        onTap: _onNavButtonTapped,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, semanticLabel: "Home"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, semanticLabel: "Search"),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_rounded, semanticLabel: "Courses"),
            label: "Courses",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, semanticLabel: "Saved"),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, semanticLabel: "Profile"),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
