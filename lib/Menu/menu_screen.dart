import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinine/utils/constants.dart';

import '../IntroductionScreen/intro_screen.dart';


class Menu extends StatelessWidget {
  Menu({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(padding: const EdgeInsets.only(left: 15),  child: Text('Twitter News', style: themeData.textTheme.headline2,),),
        TwitterBox1(),
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool('showHome', false);

            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => IntroductionScreen())
            );
          },
        ),
      ],
    );
  }
}

class TwitterBox1 extends StatelessWidget {
  TwitterBox1({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.green
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tweets from @VININEoffiziell', style: themeData.textTheme.headline6,),
                TextButton(

                  onPressed: () { print('Ich folg euch jz auf twitter lol'); },
                child: Text('Follow on Twitter', style: themeData.textTheme.headline5,),

                )
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/images/VININE_Icon_White.png'),
                ),
                Column(
                  children: [
                    Text('VININE @VININEOffiziell - 13. Dez.', style: themeData.textTheme.headline5,),
                    Text('Unser neuer ✨ Header ✨', style: themeData.textTheme.headline5,),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/VININE_headline2.png', height: 90,)),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.repeat)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.heart_broken)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                      ],
                    )
                  ],
                )
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/images/VININE_Icon_White.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('VININE @VININEOffiziell - 11. Dez.', style: themeData.textTheme.headline5,),
                    //Text('Vielleicht packen wir @LoLSola Mitte und @bladeshow_ auf ADC?', style: themeData.textTheme.headline5,),
                    //Text('twitter.com/LoLSola/214124123123123'),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.repeat)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.heart_broken)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                      ],
                    )
                  ],
                )
              ],
            ),

          ],
        )

      ),
    );
  }
}