
import 'package:flutter/material.dart';
import 'package:graduation_project/screens/patient/Home_page.dart';
import 'package:graduation_project/helper/New_Color.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex=0;
  final screens= [
   HomePage(),
   HomePage(),
   HomePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children:screens,
        ),
        bottomNavigationBar:
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor:NewColor.primaryColour,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          onTap: (index)=>setState(()=> currentIndex=index),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Notification" ),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile" ),
          ],),
      );
  }
}
