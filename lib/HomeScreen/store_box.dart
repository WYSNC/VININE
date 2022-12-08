import 'package:flutter/material.dart';
import 'package:vinine/Primeleague/primeleague_data.dart';
import '../rest/test.dart';


class StoreBox extends StatelessWidget {
  const StoreBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Store', style: themeData.textTheme.headline2,),
          ],
        ),
        Image.asset('assets/images/shop1.png')
      ],
    );
  }
}

