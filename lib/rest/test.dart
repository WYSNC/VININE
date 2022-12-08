import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vinine/Primeleague/primeleague_data.dart';
import 'package:vinine/utils/constants.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key, required this.leagueData});

  final MatchData leagueData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child:
    Container(
      color: secondcolor,
      width: length-50,
      height: length/4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Padding(padding: EdgeInsets.only(left: 20),child:
          Row(
            children: [
              Text(leagueData.team1.name),
              Image.asset(leagueData.team1.logo, height: 40,),
            ],
          ),
          //),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('21:30', style: TextStyle(color: Colors.red),),
              Text('31 Oct', style: TextStyle(color: Colors.grey),),
            ],
          ),
          Row(
            children: [
              Image.asset(leagueData.team2.logo, height: 40),
              Text(leagueData.team2.name),
            ],
          )
        ],
      )
    ),
    );
  }
}