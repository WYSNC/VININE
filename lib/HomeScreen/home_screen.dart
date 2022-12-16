import 'package:flutter/material.dart';
import 'store_box.dart';
import 'info_box.dart';
import 'matches_box.dart';
import 'team_box.dart';
import 'academy_box.dart';
import 'social_box.dart';
import 'live_box.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

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
          children: const [
            SizedBox(height: 600, child: InfoBox(),),
            SizedBox(height: 175, child: MatchBox(),),
            StoreBox(),
            TeamBox(),
            AcademyBox(),
            SocialBox(),
            LiveBox(),
          ],
        )
    );
  }
}
