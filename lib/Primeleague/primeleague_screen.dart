import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:vinine/Primeleague/match_box.dart';
import 'package:vinine/Primeleague/standings_box.dart';
import 'package:vinine/Primeleague/twitter_box.dart';
import '../HomeScreen/team_box.dart';
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
            image: AssetImage('assets/images/VININEBackground.png',),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(  //TODO
          children: [
            SizedBox(height: 700, child: StandingsBox()),
            SizedBox(height: 500, child: GamedayBox()),
            TeamBox(),
            SizedBox(height: 500, child: TwitterBox())
          ],
        )
    );
  }
}

