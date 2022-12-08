import 'package:flutter/material.dart';
import 'package:vinine/HomeScreen/article_data.dart';
import 'filter.dart';


class NewsCard extends StatelessWidget{
  const NewsCard({super.key, required this.articleData});

  final ArticleData articleData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return SizedBox(
      width: 100,//length,
      height: 100,//length+100,
      child: Stack(
          fit: StackFit.passthrough,
          children: [
            Image.asset(articleData.imageUrl, fit: BoxFit.cover),
            const Filter(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(articleData.headLine,
                  style: themeData.textTheme.headline1),
            ),
          ]
      ),
    );
  }
}