import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_classes.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_data.dart';
import 'package:vinine/utils/constants.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key, required this.matchData});

  final MatchData matchData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child:
    Container(
      color: const Color(0xB83B3B3B),
      width: 300,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Padding(padding: EdgeInsets.only(left: 20),child:
          Row(
            children: [
              Text(matchData.team1.shortname),
              Image.asset(matchData.team1.logo, height: 40,),
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
              Image.asset(matchData.team2.logo, height: 40),
              Text(matchData.team2.shortname),
            ],
          )
        ],
      )
    ),
    );
  }
}