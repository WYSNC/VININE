import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../utils/constants.dart';
import 'article_data.dart';
import 'article_page/news_article_page.dart';
import 'filter.dart';

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
    double length = MediaQuery.of(context).size.width;

    return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: const EdgeInsets.only(left: 15),  child: Text('Good evening', style: themeData.textTheme.headline2,),),
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
                      articleData: headersList[index % articleList.length],
                    );
                  },
                  updateOnScroll: true,
                  itemCount: 300,
                  initialIndex: 100,
                  itemSize: length-30,
                  dynamicItemSize: true,
                  onItemFocus: (index) {
                    setState(() {
                      cardindex = index % headersList.length;
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

    return OpenContainer(
      openColor: backgroundcolor,
      closedColor: Colors.transparent,
      closedElevation: 0,
      transitionType: ContainerTransitionType.fade,
      transitionDuration: const Duration(milliseconds: 700),
      openBuilder: (context, _) => NewsArticle(articleData: articleData),
      closedBuilder: (context, VoidCallback openContainer) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: NewsCard(articleData: articleData,)
      ),
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
      width: length-30,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(articleData.imageUrl, fit: BoxFit.cover),
          const Filter(),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 15, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(articleData.headLine, style: themeData.textTheme.headline1),
                Text(articleData.review, style: themeData.textTheme.headline3, maxLines: 3,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
