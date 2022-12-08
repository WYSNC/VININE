import 'package:flutter/material.dart';
import 'package:vinine/utils/constants.dart';
import 'package:vinine/Shop/shop_data.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.shopData});

  final ShopData shopData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double length = MediaQuery.of(context).size.width;

    return Container(
        padding: const EdgeInsets.all(15),
        color: const Color(0xff656565),
        height: length/2.3,
        width: length,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                shopData.imageUrl,
                width: length / 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: length / 2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shopData.name),
                    Rating(stars: shopData.rating),
                    SizedBox(
                      width: length / 2.5,
                      child: Text(shopData.text,
                          maxLines: 2,
                          style: const TextStyle(fontSize: 12)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('${shopData.price}€'),
                        TextButton(
                          style: TextButton.styleFrom(backgroundColor: maincolor,),
                          onPressed: () => print('Buy Now'),
                          child: const Text('Buy Now', style: TextStyle(color: Colors.black),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}

class Rating extends StatelessWidget {
  const Rating({super.key, required this.stars});

  final int stars;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < 5; i++)
          i < stars
              ? const Icon(
            Icons.star,
            color: Colors.orangeAccent,
            size: 20,
          )
              : const Icon(
            Icons.star_border_outlined,
            color: Colors.orangeAccent,
            size: 20,
          )
      ],
    );
  }
}
