import 'package:flutter/material.dart';

class TeamBox extends StatelessWidget {
  const TeamBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Team',
            style: themeData.textTheme.headline2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/images/Team.png'),
        )
      ],
    );
  }
}
