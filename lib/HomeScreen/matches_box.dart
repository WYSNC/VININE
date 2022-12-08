import 'package:flutter/material.dart';
import 'package:vinine/Primeleague/primeleague_data.dart';

import '../rest/test.dart';


class MatchBox extends StatelessWidget {
  const MatchBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Matches', style: themeData.textTheme.headline2,),
            Row(
              children: [
                Text('Show more', style: themeData.textTheme.subtitle1,),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_right_alt, color: Colors.blue,)),
              ],
            ),
          ],
        ),
        const MatchCard(leagueData: MatchData(team1: TeamData(
          name: 'VININE',
          logo: 'assets/images/VININELogoWhite.png',
          players: 5,
          div: '4.8',
          wins: 6,
          losses: 0,
          rank: 1,
          creationdate: '23.11.2020',
          nation: 'Germany',
          contact: 'xd',
        ), team2: TeamData(
            name: 'TOG',
            logo: 'assets/images/TOGLogo.png',
            players: 5,
            div: '4.8',
            wins: 5,
            losses: 1,
            rank: 2,
            creationdate: '23.11.2020',
            nation: 'Germany',
            contact: 'xd'
        ),),)
      ],
    );
  }
}

