import 'package:flutter/material.dart';
import 'package:vinine/utils/constants.dart';

class LastPage extends StatelessWidget{
  LastPage({super.key, required this.controller});

  final controller;


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
            children: [
              Image.asset(
                'assets/images/VININELogoLong.png',
                width: width-50,
              ),
              SizedBox(height: height/20,),
              Text('Competitive', style: themeData.textTheme.headline1),
              SizedBox(height: height/35,),
              SizedBox(
                width: width-50, child: Text(
                    'Mit dem Fokus auf Competitive Gaming bestreben wir die Rationalisierung der Flame-Kultur und schaffen in-game-Werte.\n\nGaming besteht für uns aus fairen, sportlichen Wettkämpfen.\n\nBei VININE ist uns die Elo vollkommen egal – stimmen das Mindset und die Werte, kann jeder VININEr werden.',
                    style: themeData.textTheme.bodyText2, textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}