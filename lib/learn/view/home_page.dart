
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/Screens/chatScreen.dart';
import '../core/duration.dart';
import '../core/home.dart';
import '../core/profile_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Default index

  final List<Widget> _pages = [
    HomeScreen(),
    AlarmsScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate to the corresponding page (if needed)
    // Get.toNamed(_pages[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.picture_as_pdf_outlined, color: Colors.white),
          Icon(Icons.chat, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
        height: 45,
        backgroundColor: Colors.transparent,
        color: Colors.deepPurple.shade800,
        animationDuration: const Duration(milliseconds: 200),
        animationCurve: Curves.bounceIn,
        onTap: _onItemTapped, // Update the selected index on tap
      ),
    );
  }
}







