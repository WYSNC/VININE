import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_data.dart';
import 'package:vinine/rest/match_card.dart';
import 'package:vinine/utils/constants.dart';
import '../Primeleague/pl_database/primeleague_classes.dart';


class MatchBox extends StatelessWidget {
  const MatchBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(padding: const EdgeInsets.only(left: 15, top: 15, right: 15),  child: Row(
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
        ),),
        const SizedBox(height: 15,),
        Expanded(
          child: ScrollSnapList(
            itemCount: div4.schedule[0].matches.length,
            itemBuilder: (context , index) {
              return MatchBuilder(matchData: div4.schedule[index].matches[0],);
              },
            initialIndex: 2,
            itemSize: length-30,
            dynamicItemSize: true,
            onItemFocus: (index) {  },
          ),
        ),
      ],
    );
  }
}


class MatchBuilder extends StatelessWidget {
  const MatchBuilder({super.key, required this.matchData});

  final MatchData matchData;

  @override
  Widget build(BuildContext context) {
    double length = MediaQuery.of(context).size.width;

    return OpenContainer(
      openColor: backgroundcolor,
      closedColor: Colors.transparent,
      closedElevation: 0,
      transitionType: ContainerTransitionType.fade,
      transitionDuration: const Duration(milliseconds: 700),
      openBuilder: (context, _) => Container(color: Colors.green, child: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: const Icon(Icons.exit_to_app),)),
      closedBuilder: (context, VoidCallback openContainer) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: MatchCard(matchData: matchData,)
    ));
  }
}

