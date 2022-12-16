import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AcademyBox extends StatelessWidget {
  const AcademyBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Padding(padding: const EdgeInsets.only(left: 15, top: 15, right: 15),  child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

          Text(
            'Academy',
            style: themeData.textTheme.headline2,
          ),
        const SizedBox(height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    //Pius
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OpenContainer(
                          openColor: backgroundcolor,
                          closedColor: Colors.transparent,
                          closedElevation: 0,
                          transitionType: ContainerTransitionType.fade,
                          transitionDuration: const Duration(milliseconds: 700),
                          openBuilder: (context, _) => Container(
                              color: Colors.green,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.exit_to_app),
                              )),
                          closedBuilder:
                              (context, VoidCallback openContainer) =>
                                 ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'assets/images/Pius1.png',
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                      Text('Pius \"Bladeshow\" Cornelius',
                          style: themeData.textTheme.headline6),
                    ],
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    //Vibe
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OpenContainer(
                          openColor: backgroundcolor,
                          closedColor: Colors.transparent,
                          closedElevation: 0,
                          transitionType: ContainerTransitionType.fade,
                          transitionDuration: const Duration(milliseconds: 700),
                          openBuilder: (context, _) => Container(
                              color: Colors.green,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.exit_to_app),
                              )),
                          closedBuilder:
                              (context, VoidCallback openContainer) =>
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/drop1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                      ),

                      Text('Nick \"Vibe\" Berger', style: themeData.textTheme.headline6),
                    ],
                  ),
                )
              ],
            )
      ])
    );
  }
}
