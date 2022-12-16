import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_data.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_classes.dart';

class StandingsBox extends StatelessWidget {
  StandingsBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Standings', style: themeData.textTheme.headline2,),
              Text(div4.name, style: themeData.textTheme.headline2,),
            ],
          )
        ),
        const SizedBox(height: 15,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(left: 15),  child: SizedBox(width: 60, child: Text('Rank', style: themeData.textTheme.headline4,),),),
              Expanded(child: Text('Teilnehmer', style: themeData.textTheme.headline4,)),
              Row(
                children: [
                  SizedBox(width: 30, height: 30, child: Text('W', style: themeData.textTheme.headline4, )),
                  SizedBox(width: 10, height: 30, child: Text(':', style: themeData.textTheme.headline4, textAlign: TextAlign.center,)),
                  Padding(padding: const EdgeInsets.only(right: 15),  child: SizedBox(width: 30, height: 30, child: Text('L', style: themeData.textTheme.headline4,textAlign: TextAlign.right,)),)
                ],
              ),
        ]),
        const SizedBox(
          height: 15,
        ),
        Expanded(
            child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            return const Divider(
              color: secondcolor,
              thickness: 1,
            );
          },
          itemCount: div4.teams.length,
          itemBuilder: (context, index) {
            return TeamRowBuilder(
              teamData: div4.teams[index],
            );
          },
        ))
      ],
    );
  }
}

class TeamRowBuilder extends StatelessWidget {
  const TeamRowBuilder({super.key, required this.teamData});

  final TeamData teamData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          SizedBox(
            width: 60,
            child: Center(
                child: Text(
              '${teamData.rank.toString()}.',
              style: themeData.textTheme.headline3,
            )),
          ),
          Image.asset(
            teamData.logo,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            teamData.shortname,
            style: themeData.textTheme.headline3,
          ),
        ]),
        Row(
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: Text(
                teamData.wins.toString(),
                style: themeData.textTheme.headline3,
              ),
            ),
            SizedBox(
              width: 10,
              height: 30,
              child: Text(
                ':',
                style: themeData.textTheme.headline3, textAlign: TextAlign.center,
              ),
            ),
              Padding(padding: const EdgeInsets.only(right: 15),  child: SizedBox(
              width: 30,
              height: 30,
              child: Text(
                teamData.losses.toString(),
                style: themeData.textTheme.headline3, textAlign: TextAlign.right,
              ),)
            ),
          ],
        ),
      ],
    );
  }
}
