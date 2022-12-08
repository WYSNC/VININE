import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:vinine/HomeScreen/article_data.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_data.dart';
import 'package:vinine/utils/constants.dart';

import '../Primeleague/pl_database/primeleague_classes.dart';
import '../rest/test.dart';
import 'article_page/news_article_page.dart';


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


        Expanded(
          child: ScrollSnapList(
            itemCount: div4.schedule[0].matches.length,
            itemBuilder: (context , index) {
              return MatchBuilder(matchData: div4.schedule[index].matches[0],);
              },
            initialIndex: 2,
            itemSize: 300,
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
      closedColor: backgroundcolor,
      transitionType: ContainerTransitionType.fade,
      transitionDuration: const Duration(milliseconds: 700),
      openBuilder: (context, _) => Container(color: Colors.green,),
      closedBuilder: (context, VoidCallback openContainer) => ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: MatchCard(matchData: matchData,)
    ));
  }
}

