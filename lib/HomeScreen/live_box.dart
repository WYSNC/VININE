import 'package:flutter/material.dart';

class LiveBox extends StatelessWidget {
  const LiveBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Live Channels',
            style: themeData.textTheme.headline2,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Image.asset(
              'assets/images/Twitch_Preview.png',
              fit: BoxFit.cover,
            ),
        ),
      ],
    );
  }
}