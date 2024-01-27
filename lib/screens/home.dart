import 'package:flutter/material.dart';

import 'package:netflix/screens/pages/firstpage/firstpage.dart';
import 'package:netflix/screens/pages/secondpage/secondpage.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentindex = 0;

  final List<Widget> _tabs = [
    // Replace with your tab widgets
    Fisrtpage(),
    SecondPage(),
    const Placeholder(color: Colors.orange),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download_for_offline),
              label: 'Downloads',
            ),
          ],
        ),
        body: _tabs[currentindex]);
  }
}
