



import 'package:flutter/material.dart';

class BottomNavegationBar extends StatefulWidget {
  const BottomNavegationBar({super.key});

  @override
  State<BottomNavegationBar> createState() => _BottomNavegationBarState();
}

class _BottomNavegationBarState extends State<BottomNavegationBar> {
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (val){
          setState(() {
            selectedindex=val;
          });


        },
        currentIndex: selectedindex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items:
    
    [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
      BottomNavigationBarItem(icon: Icon(Icons.photo_album_rounded, ),label: "file"),
      BottomNavigationBarItem(icon: Icon(Icons.chat_outlined),label: "chat"),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
      BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "profile"),


    ]
    );
  }
}
