import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../HomeScreen/matches_box.dart';
import '../utils/constants.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_data.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_classes.dart';

class GamedayBox extends StatelessWidget {
  GamedayBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: const EdgeInsets.only(left: 15),  child: Text('Matches', style: themeData.textTheme.headline2,),),
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
              return Column(
                children: [
                  MatchBuilder(matchData: div4.schedule[index].matches[0],),
                  SizedBox(height: 15,),
                  MatchBuilder(matchData: div4.schedule[index].matches[1],),
                  SizedBox(height: 15,),
                  MatchBuilder(matchData: div4.schedule[index].matches[2],),
                  SizedBox(height: 15,),
                  MatchBuilder(matchData: div4.schedule[index].matches[3],),
                  SizedBox(height: 15,),
                  MatchBuilder(matchData: div4.schedule[index].matches[4],),
                ],
              );
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