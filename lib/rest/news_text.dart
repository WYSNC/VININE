import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vinine/homepage.dart';
import 'package:vinine/utils/constants.dart';

class NewsText extends StatefulWidget {
  const NewsText({super.key, required this.title, required this.review, required this.imagelocation});

  final String title;
  final String review;
  final String imagelocation;

  @override
  _NewsTextState createState() => _NewsTextState();
}

class _NewsTextState extends State<NewsText> {


  @override
  Widget build(BuildContext context) {
    double length = MediaQuery.of(context).size.width;
    final ThemeData themeData = Theme.of(context);

    return SizedBox(
      height: (length - 50) / 2,
      width: length - 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title,
            style: themeData.textTheme.headline1,
          ),
          Text(
            widget.review,
            style: themeData.textTheme.bodyText2,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Text('READ MORE',
            style: GoogleFonts.karla(
              textStyle: const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  letterSpacing: 0.3
              ),
            ),)
        ],
      ),

    );
  }
}