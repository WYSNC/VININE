import 'package:flutter/material.dart';

class SocialBox extends StatelessWidget {
  const SocialBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Social', style: themeData.textTheme.headline2,),
      const SizedBox(height: 15,),
      Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Instagram'),
                                  content: const Text(
                                      'Möchtest du wirklich unsere Instagram Seite besuchen'),
                                  actions: [
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('Hell nah')),
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('OKAYYY LETS GO')),
                                  ],
                                ));
                          },
                      child: Center(
                        child: Image.asset(
                          'assets/images/instagram.png',
                          width: 55,
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Twitter'),
                                  content: const Text(
                                      'Möchtest du wirklich unsere Twitter Seite besuchen'),
                                  actions: [
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('Hell nah')),
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('OKAYYY LETS GO')),
                                  ],
                                ));
                          },
                      child: Center(
                        child: Image.asset(
                          'assets/images/twitter.png',
                          width: 70,
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: const Text('Website'),
                                  content: const Text(
                                      'Möchtest du wirklich unsere Website besuchen'),
                                  actions: [
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('Hell nah')),
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('OKAYYY LETS GO')),
                                  ],
                                ));
                      },
                      child: Center(
                        child: Image.asset(
                          'assets/images/website.png',
                          width: 80,
                        ),
                      ),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Instagram',
                      style: themeData.textTheme.headline6,
                      textAlign: TextAlign.center,
                    )),
                    Expanded(
                        child: Text(
                      'Twitter',
                      style: themeData.textTheme.headline6,
                      textAlign: TextAlign.center,
                    )),
                    Expanded(
                        child: Text(
                      'Website',
                      style: themeData.textTheme.headline6,
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ])
    ]));
  }
}
