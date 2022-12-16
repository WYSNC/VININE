import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vinine/homepage.dart';
import 'intro_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vinine/utils/constants.dart';

import 'last_intro_page.dart';

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

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: CustomizableEffect(
                spacing: 5,
                  activeDotDecoration: DotDecoration(
                      width: 30,
                      height: 5,
                    color: whitecolor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  dotDecoration: DotDecoration(
                    width: 5,
                    height: 5,
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
              )
            ),
        ),
        body: PageView(
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          controller: controller,
          children: [
            IntroPage(controller: controller,),
            IntroPage(controller: controller,),
            LastPage(),
          ],
        ),
    );
  }
}