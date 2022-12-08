import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_classes.dart';
import 'package:vinine/utils/constants.dart';
import '../HomeScreen/article_data.dart';
import '../HomeScreen/home_screen.dart';
import 'pl_database/primeleague_data.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_data.dart';

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

    return Column(
      children: [
        Center(
          child: Text('PRIMELEAGUE', style: themeData.textTheme.headline1),
        ),
        Center(
          child: Text(div4.name, style: themeData.textTheme.bodyText2),
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: Text('11.12.22 Nächste Spiele:'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Image.asset(
                teamList[0].logo,
                width: 50,
                height: 50,
              ),
              Text(teamList[0].fullname),
            ]),
            const Text('vs'),
            Row(children: [
              Text(teamList[2].fullname),
              Image.asset(
                teamList[2].logo,
                width: 50,
                height: 50,
              ),
            ]),
          ],
        ),
        const Text('TABELLE'),
        Expanded(
          child: ListView.builder(
              itemCount: teamList.length,
              itemBuilder: (context, index) {
                return StandingsBuilder(
                  teamData: teamList[index],
                );
              }),
        ),
        const Text('Das Team'),
      ],
    );
  }
}

class StandingsBuilder extends StatelessWidget {
  const StandingsBuilder({super.key, required this.teamData});

  final TeamData teamData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Text(teamData.rank.toString()),
          teamData.shortname == 'NNO' ?
          Image.asset(
            teamData.logo,
            width: 50,
            height: 50,
            color: Colors.white,
          )
          : Image.asset(
            teamData.logo,
            width: 50,
            height: 50,
          ),
          Text(teamData.fullname),
        ]),
        Row(children: [
          Text('${teamData.wins.toString()} : ${teamData.losses.toString()} '),
          teamData.rank < 3 ? const Text('Div 3-4 Playoffs') : teamData.rank == 8 ? const Text('Div 5') : teamData.rank > 5 ? const Text('Div 4-5 Playoffs') : const Text('Div 4')
        ]),
      ],
    );
  }
}
