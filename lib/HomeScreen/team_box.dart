import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_classes.dart';

import '../Primeleague/pl_database/primeleague_data.dart';
import '../utils/constants.dart';

class TeamBox extends StatelessWidget {
  const TeamBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Padding(padding: const EdgeInsets.only(left: 15, right: 15, top: 15),  child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(length.toString()),//'Team', style: themeData.textTheme.headline2,),
        Image.asset('assets/images/Team.png'),
        SizedBox(
          height: 500,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(width: 15,);
            },
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: playerList.length,
              itemBuilder: (context, index) {
                return PlayerBuilder(playerData: playerList[index]);
              }),
        ),
      ],)
    );
  }
}

class PlayerBuilder extends StatelessWidget {
  const PlayerBuilder({super.key, required this.playerData});

  final PlayerData playerData;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
        openColor: backgroundcolor,
        closedColor: Colors.transparent,
        closedElevation: 0,
        transitionType: ContainerTransitionType.fade,
        transitionDuration: const Duration(milliseconds: 700),
        openBuilder: (context, _) => Container(color: Colors.green, child: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: const Icon(Icons.exit_to_app),)),
        closedBuilder: (context, VoidCallback openContainer) => PlayerCard(
          playerData: playerData,
        ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  const PlayerCard({super.key, required this.playerData});

  final PlayerData playerData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;
    double test = (length/5)-(4/5)*15;

    return Container(
      width: ((length-30)/5)-(4/5)*15,
          color: const Color(0xB83B3B3B),
          child: Text(playerData.nickname)
      );
  }
}