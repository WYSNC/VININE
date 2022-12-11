import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

import '../utils/constants.dart';

class Primeleague extends StatefulWidget {
  const Primeleague({super.key});

  @override
  _PrimeleagueState createState() => _PrimeleagueState();
}

class _PrimeleagueState extends State<Primeleague> {
  final trans = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/shop1.png',),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('NEW', style: TextStyle(color: maincolor, fontSize: 76, fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.only(left: 15) ,child: Text('ARRIVALS', style: TextStyle(color: maincolor, fontSize: 76, fontWeight: FontWeight.bold))),
              Text('TODAY', style: TextStyle(color: maincolor, fontSize: 76, fontWeight: FontWeight.bold)),
            ],
          ),
        )
    );
  }
}
