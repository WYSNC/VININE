import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:vinine/utils/constants.dart';
import 'package:vinine/Shop/shop_data.dart';
import '../Shop/shop_item.dart';
import 'shop_product_card.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  ShopState createState() => ShopState();
}

class ShopState extends State<Shop> {
  final trans = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      children: [
        Center(child: Text('SHOP', style: themeData.textTheme.headline1),),
        Expanded(
          child: ListView.builder(
              itemCount: shopList.length,
              itemBuilder: (context, index) {
                return ShopBuilder(
                  shopData: shopList[index],
                );
              }),
        ),
      ],
    );
  }
}

class ShopBuilder extends StatelessWidget {
  const ShopBuilder({super.key, required this.shopData});

  final ShopData shopData;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openColor: backgroundcolor,
      closedColor: backgroundcolor,
      transitionType: ContainerTransitionType.fade,
      transitionDuration: const Duration(milliseconds: 700),
      openBuilder: (context, _) => const ShopItem(),
      closedBuilder: (context, VoidCallback openContainer) => Container(
        padding: const EdgeInsets.all(15),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ProductCard(shopData: shopData,),
        ),
      ),
    );
  }
}

