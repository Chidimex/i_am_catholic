import 'package:flutter/material.dart';
import 'package:i_am_catholic/apptheme/app_colors.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.attach_money_sharp), label: "Donate"),
        BottomNavigationBarItem(icon: Icon(Icons.church), label: "Appreciation"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
       // BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Songs"),
      ],
    );
  }
}