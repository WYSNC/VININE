import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:vinine/Primeleague/pl_database/primeleague_data.dart';
import 'package:vinine/utils/constants.dart';
import 'package:vinine/Shop/shop_data.dart';
import '../Shop/shop_item.dart';
import 'package:vinine/rest/test.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  //SHOP_SCREEN  TEST!!!!
  final trans = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      children: [
        Center(child: Text('MENU', style: themeData.textTheme.headline1),),
        const Text('Hier ist nix lol')
      ],
    );
  }
}



