import 'package:flutter/material.dart';
import 'package:messageapp/chatpage.dart';
import 'package:messageapp/main.dart';
import 'package:messageapp/msg.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  bool value = false;
  int selectedindex = 0;
  void bottomnavigation(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List<Widget> pages = [
    MsgApp(),
    Chatscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: bottomnavigation,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chat',
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        //  currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        // onTap: _onItemTapped,
      ),
    );
  }
}
