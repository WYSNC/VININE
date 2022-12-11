import 'package:flutter/material.dart';

class SocialBox extends StatelessWidget {
  const SocialBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Text(
            'Social',
            style: themeData.textTheme.headline2,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/instagram.png',
                        fit: BoxFit.cover,
                      ),
                      Text('Instagram', style: themeData.textTheme.headline6),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/twitter.png',
                        fit: BoxFit.cover,
                      ),
                      Text('Twitter', style: themeData.textTheme.headline6),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/website.png',
                        color: Colors.white,
                        fit: BoxFit.cover,
                      ),
                      Text('Website', style: themeData.textTheme.headline6),
                    ],
                  ),
                ),
              ],
            )
        ),
      ],
    );
  }
}//Git test