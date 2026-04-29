import 'package:flutter/material.dart';
import 'package:i_am_catholic/apptheme/app_colors.dart';
import 'package:i_am_catholic/pages/fab.dart';
import 'package:i_am_catholic/pages/homeppage.dart';
import 'package:i_am_catholic/pages/profile.dart';
import 'package:i_am_catholic/pages/readings.dart';
import 'package:i_am_catholic/pages/saints.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    Readings(),
    Saints(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
          currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_sharp),
            label: "Readings",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.church),label: "Saints"),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: "Profile"),
          // BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Songs"),
        ],
      ),
      floatingActionButton: ChatButton(),
    );
  }
}
