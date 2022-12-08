import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:vinine/HomeScreen/news_article_card.dart';
import 'package:vinine/HomeScreen/store_box.dart';
import 'package:vinine/utils/constants.dart';
import 'article_page/news_article_page.dart';
import 'article_data.dart';
import 'info_box.dart';
import 'matches_box.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
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
        //height: 550,
        //width: 350,
        child: ListView(
          children: const [
            SizedBox(height: 500, child: InfoBox(),),
            SizedBox(height: 150, child: MatchBox(),),
            StoreBox(),
          ],
        )
    );
  }
}
