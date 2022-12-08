import 'package:flutter/material.dart';
import '../homepage.dart';
import '../utils/constants.dart';


class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 0;



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: blackcolor,
        unselectedItemColor: secondcolor,
        selectedItemColor: maincolor,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.diamond_outlined),
            label: 'Academy',
            activeIcon: Icon(Icons.diamond),

          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
            activeIcon: Icon(Icons.shopping_bag_rounded),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/PrimeleagueCut.png', width: 30, height: 30, color: secondcolor,),
            label: 'Primeleague',
            activeIcon: Image.asset('assets/images/PrimeleagueCut.png', width: 30, height: 30, color: maincolor,),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      );
  }
}