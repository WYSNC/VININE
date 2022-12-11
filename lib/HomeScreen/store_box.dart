import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import '../Shop/shop_data.dart';
import '../Shop/shop_item.dart';
import '../utils/constants.dart';

class StoreBox extends StatelessWidget {
  const StoreBox({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Store',
            style: themeData.textTheme.headline2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: SizedBox(
            height: 200,
            child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: shopList.length,
                itemBuilder: (context, index) {
                  return ShopPreBuilder(shopData: shopList[index]);
                }),
          ),
        ),
      ],
    );
  }
}

class ShopPreBuilder extends StatelessWidget {
  const ShopPreBuilder({super.key, required this.shopData});

  final ShopData shopData;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openColor: backgroundcolor,
      closedColor: Colors.transparent,
      closedElevation: 0,
      transitionType: ContainerTransitionType.fade,
      transitionDuration: const Duration(milliseconds: 700),
      openBuilder: (context, _) => const ShopItem(),
      closedBuilder: (context, VoidCallback openContainer) => SmallShopCard(
        shopData: shopData,
      ),
    );
  }
}

class SmallShopCard extends StatelessWidget {
  const SmallShopCard({super.key, required this.shopData});

  final ShopData shopData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(shopData.imageUrl, height: 150),
        ),
        const SizedBox(height: 2,),
        Text(shopData.name, style: themeData.textTheme.headline5,),
        Text('${shopData.price}€', style: themeData.textTheme.headline6,),
      ],
    );
  }
}
