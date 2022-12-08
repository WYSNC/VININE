import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinine/IntroductionScreen/intro_screen.dart';
import 'homepage.dart';
import 'package:material_color_generator/material_color_generator.dart';
import 'utils/constants.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;

  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;

  MyApp({Key? key, required this.showHome,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      color: secondcolor,
      debugShowCheckedModeBanner: false,
      title: 'VININE',
      theme: ThemeData(
        backgroundColor: blackcolor,
        scaffoldBackgroundColor: backgroundcolor,
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
        primaryColor: maincolor,
        accentColor: secondcolor,
        canvasColor: blackcolor,
        colorScheme: ColorScheme.fromSwatch(
         primarySwatch: generateMaterialColor(
             color: maincolor
         ),
        ),
        iconTheme: const IconThemeData(color: whitecolor, size: 32),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
          foregroundColor: whitecolor
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Color(0xDB000000),
          unselectedItemColor: maincolor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: secondcolor,
        ),

      ),
      home: showHome ? const MyHomePage() : IntroductionScreen(),
    );
  }
}
