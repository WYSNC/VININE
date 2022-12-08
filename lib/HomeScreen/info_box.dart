import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../utils/constants.dart';
import 'article_data.dart';
import 'article_page/news_article_page.dart';

class InfoBox extends StatefulWidget {
  const InfoBox({super.key});

  @override
  _InfoBoxState createState() => _InfoBoxState();
}

class _InfoBoxState extends State<InfoBox> {
  int cardindex = 1;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Good evening', style: themeData.textTheme.headline2,),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_outlined)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings_outlined)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ScrollSnapList(
                  itemBuilder: (context, index) {
                    return InfoBuilder(
                      articleData: articleList[index % articleList.length],
                    );
                  },
                  updateOnScroll: true,
                  itemCount: 300,
                  initialIndex: 100,
                  itemSize: 300,
                  dynamicItemSize: true,
                  onItemFocus: (index) {
                    setState(() {
                      cardindex = index % articleList.length;
                    });
                  }),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothIndicator(offset: cardindex.toDouble(), count: 3, effect: const SlideEffect(
                  spacing: 16,
                  dotColor: graycolor,
                  activeDotColor: maincolor,
                  dotWidth: 60,
                  dotHeight: 5,
                ),
                ),
              ],
            ),
          ],
        );
  }
}

class InfoBuilder extends StatelessWidget {
  const InfoBuilder({super.key, required this.articleData});

  final ArticleData articleData;

  @override
  Widget build(BuildContext context) {
    double length = MediaQuery.of(context).size.width;

    return OpenContainer(
      openColor: backgroundcolor,
      closedColor: backgroundcolor,
      transitionType: ContainerTransitionType.fade,
      transitionDuration: const Duration(milliseconds: 700),
      openBuilder: (context, _) => NewsArticle(articleData: articleData),
      closedBuilder: (context, VoidCallback openContainer) => ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(articleData.imageUrl,
              height: 470, width: 300, fit: BoxFit.cover)),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.articleData});

  final ArticleData articleData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return SizedBox(
      width: length,
      height: length + 100,
      child: Stack(fit: StackFit.passthrough, children: [
        Image.asset(articleData.imageUrl, fit: BoxFit.cover),
        Align(
          alignment: Alignment.bottomLeft,
          child:
              Text(articleData.headLine, style: themeData.textTheme.headline1),
        ),
      ]),
    );
  }
}
