import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../homepage.dart';
import '../utils/constants.dart';

class LastPage extends StatelessWidget {
  LastPage({super.key});

  //String title;
  //String text;

  @override
  Widget build(BuildContext context) {
    double length = MediaQuery.of(context).size.width;
    final ThemeData themeData = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/Introbackground.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      width: length - 30,
                      height: 40,
                      child: TextButton(
                        onPressed: () async {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setBool('showHome', true);
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const MyHomePage())
                          );
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: whitecolor,
                            backgroundColor: blackcolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text('OKAYYY LETS GO', style: themeData.textTheme.headline6,),
                      )),
                ],
              )
          ),
        ),
      ),
    );
  }
}
