import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../HomeScreen/news_article_card.dart';

class ImageBox extends StatelessWidget{
  ImageBox({super.key, required this.length, required this.imagelocation});

  final double length;
  final String imagelocation;

  @override
  Widget build(BuildContext context) {
    return Center(      //Image
        child: Image.asset(imagelocation,
          width: length-50,
          height: length-50,
        ),
    );
  }
}