import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vinine/homepage.dart';
import 'intro_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vinine/utils/constants.dart';

class IntroductionScreen extends StatefulWidget{
  IntroductionScreen({super.key});

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SmoothPageIndicator(
              controller: controller,
              count: 5,
              effect: const ExpandingDotsEffect(
                spacing: 16,
                dotColor: graycolor,
                activeDotColor: maincolor,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: TextButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('showHome', true);

                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage())
                  );
                },
                child: Text('SKIP', style: themeData.textTheme.headline2,),
              ),
            ),
          ],
        ),
        body: PageView(
          onPageChanged: (index) {
            setState(() => isLastPage = index == 4);
          },
          controller: controller,
          children: [
            IntroPage(title: 'Welcome to VININE',
              text: 'Das Mindset beim Gaming ist das allerwichtigste, um Erfolg zu haben. Gaming muss Spaß machen – \nda sind wir uns alle einig.\n\nUm das perfekte Mindset hervorzuheben, haben wir VININE gegründet.\n\nUnsere Brand zeichnet sich durch unsere drei Leitsätze Full Tryhard, Mental Reset und Stay Focused aus:',),
            IntroPage(title: 'Fair Play',
              text: 'Seit Jahren etabliert sich Sola als Streamer bei Twitch. Mit seinem Gaming-Channel überzeugt Sola seine Twitch-Gemeinde und bildet eine Gruppe von VININErn.\n\nDabei liegt der Fokus auf high-elo Gameplay und dem täglichen Grind als ADC in League of Legends.\n\nTryhard steht bei Sola an erster Stelle, egal in welchem Spiel;\n\nkompetitiv muss es sein.',),
            IntroPage(title: 'Tryhard',
              text: 'Mit unserem Leitspruch Full Tryhard möchten wir ein Statement setzen. Im Gegensatz zur meist ironischen Interpretation sagen wir: Im Game muss uns der Ehrgeiz packen!\n\nEhrgeiz und Anstrengung machen nun mal einen Gamer aus.\n\nWo bleibt sonst der Spaß?\n\nBei VININE geht’s darum, stets an sich selbst zu arbeiten und besser als gestern zu werden und das schafft man nur mit einer spitzen Willenskraft.',),
            IntroPage(title: 'Teamplay',
              text: 'Beim Teamplay kann sich jeder auf jeden verlassen. Alle unsere Teammitglieder ergänzen das Team mit ihren Rollen und Stärken.\n\nManchmal hat man einen schlechten Tag – dann ist das Team da und ermutigt dich zu einem Mental Reset. Oder spornt dich an, fokussiert zu bleiben.\n\nZusammen verliert man den Fokus nie aus den Augen!',),
            IntroPage(title: 'Competitive',
              text: 'Mit dem Fokus auf Competitive Gaming bestreben wir die Rationalisierung der Flame-Kultur und schaffen in-game-Werte.\n\nGaming besteht für uns aus fairen, sportlichen Wettkämpfen.\n\nBei VININE ist uns die Elo vollkommen egal – stimmen das Mindset und die Werte, kann jeder VININEr werden.',)
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .centerFloat,
        floatingActionButton: isLastPage
            ? ElevatedButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('showHome', true);

              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const MyHomePage())
              );
            }, child: const Text('OKAYYY LETS GO')
        )

            : FloatingActionButton(
          onPressed: () =>
              controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut
              ),
          child: const Icon(
            Icons.arrow_forward_outlined,
          ),
        )

    );
  }
}