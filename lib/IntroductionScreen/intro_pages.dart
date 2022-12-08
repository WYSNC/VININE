import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget{
  IntroPage({super.key, required this.title, required this.text});

  String title;
  String text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final ThemeData themeData = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/VININEBackground.png',),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/VININELogoLong.png',
                width: width-50,
              ),
              SizedBox(height: height/20,),
              Text(title, style: themeData.textTheme.headline1),
              SizedBox(height: height/35,),
              SizedBox(
                  width: width-50,
                  child: Text(text, style: themeData.textTheme.bodyText2, textAlign: TextAlign.center)
              ),
            ],
          ),
        ),
      ),
    );
  }
}