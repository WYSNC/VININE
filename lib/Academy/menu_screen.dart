import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:vinine/Primeleague/primeleague_data.dart';
import 'package:vinine/utils/constants.dart';
import 'package:vinine/Shop/shop_data.dart';
import '../Shop/shop_item.dart';
import 'package:vinine/rest/test.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  //SHOP_SCREEN  TEST!!!!
  final trans = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      children: [
        Center(child: Text('ACEDEMY', style: themeData.textTheme.headline1),),
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



