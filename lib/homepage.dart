import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinine/Academy/menu_screen.dart';
import 'package:vinine/HomeScreen/home_screen.dart';
import 'package:vinine/Primeleague/primeleague_screen.dart';
import 'package:vinine/Shop/shop_screen.dart';
import 'package:vinine/IntroductionScreen/intro_screen.dart';
import 'package:vinine/utils/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  final screens = [
    const Home(),
    const Primeleague(),
    const Shop(),
    const Menu(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('TEST ONLY'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('showHome', false);

              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => IntroductionScreen())
              );
              },
          ),
        ],
      ),
      body: screens[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/VININELogoWhite.png', width: 30, height: 30, color: maincolor,),
            label: 'Home',
            activeIcon: Image.asset('assets/images/VININELogoWhite.png', width: 30, height: 30),
            tooltip: 'Home of VININE'
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/PrimeleagueCut.png', width: 30, height: 30, color: maincolor,),
              label: 'Primeleague',
              activeIcon: Image.asset('assets/images/PrimeleagueCut.png', width: 30, height: 30, color: secondcolor,),
              tooltip: 'Alles rund um Team VININE'
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
            activeIcon: Icon(Icons.shopping_bag_rounded),
            tooltip: 'Unser Shop',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
              activeIcon: Icon(Icons.menu_rounded),
              tooltip: 'Settings & co'
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}