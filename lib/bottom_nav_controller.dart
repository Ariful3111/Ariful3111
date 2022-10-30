import 'package:e_bazar/account_screen.dart';
import 'package:e_bazar/add_screen.dart';
import 'package:e_bazar/chat_screen.dart';
import 'package:e_bazar/home_screen.dart';
import 'package:e_bazar/my_add_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({Key? key}) : super(key: key);

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {

    final _pages = [
      Home_Screen(),
      My_Add_Screen(),
      Add_Screen(),
      Chat_Screen(),
      Account_Screen(),
    ];


    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        // unselectedFontSize: 0.0,
        // selectedFontSize: 0.0,

        onTap: (int index){
          _currentindex=index;
          setState(() {
            _currentindex=index;
          });
        },

        // selectedItemColor: Colors.pinkAccent,
        // unselectedItemColor: Colors.greenAccent,
        // selectedLabelStyle: TextStyle(color: Colors.pinkAccent,),
        // unselectedLabelStyle: TextStyle(color: Colors.greenAccent),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: 'My adds'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_rounded),label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      ),
      body: _pages[_currentindex],
    );

  }
}
