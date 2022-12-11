import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vinine/HomeScreen/article_data.dart';
import 'package:vinine/HomeScreen/article_page/article_page_widgets.dart';
import 'package:vinine/utils/constants.dart';

class NewsArticle extends StatelessWidget {
  NewsArticle({super.key, required this.articleData});

  final ArticleData articleData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundcolor,
        centerTitle: true,
        title: Image.asset(
          'assets/images/VININELogoWhite.png',
          width: 40,
          height: 40,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
            ),
            onPressed: () => print('options'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: backgroundcolor,
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                InfoRow(authorData: articleData.author,release: articleData.release,),
                Text(articleData.headLine, style: themeData.textTheme.headline1,),
                const SizedBox(height: 10,),
                Image.asset(articleData.imageUrl, height: length,),
                const SizedBox(height: 10,),
                const SocialsRow(),
                const SizedBox(height: 10,),
                SizedBox(
                  width: length - 30,
                  child: Column(
                    children: [
                      Text(
                        articleData.upperText,
                        style: themeData.textTheme.bodyText1,
                      ),
                      Text(
                        articleData.text,
                        style: themeData.textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
