import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_classes.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key, required this.matchData});

  final MatchData matchData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return
    Container(
      color: const Color(0xB83B3B3B),
      width: length-30,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(matchData.team1.shortname),
              Image.asset(matchData.team1.logo, height: 30,width: 30,),
            ],
          ),
          //),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('21:30', style: TextStyle(color: Colors.red),),
              Text(matchData.date, style: const TextStyle(color: Colors.grey),),
            ],
          ),
          Row(
            children: [
              Image.asset(matchData.team2.logo, height: 30,width: 30),
              Text(matchData.team2.shortname),
            ],
          )
        ],
      )

    );
  }
}