import 'package:flutter/material.dart';
import 'package:vinine/utils/constants.dart';

class ShopItem extends StatefulWidget {
  const ShopItem({super.key});

  @override
  ShopItemState createState() => ShopItemState();
}

class ShopItemState extends State<ShopItem> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundcolor,
        centerTitle: true,
        title: Image.asset(
          'assets/images/VININELogoWhite.png',
          width: 40,
          height: 40,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
            ),
            onPressed: () => print('options'),
          ),
        ],
      ),
      body: const Center(child: Text('Shop-Item X'))
    );
  }
}
