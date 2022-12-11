import 'package:flutter/material.dart';

class Filter extends StatelessWidget{
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Align(                                                                  //Filter
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Color(0xff000000)
                ],
                stops: [
                  0.1,
                  0.9
                ]
            ),
            color: Color(0x942C2929),
        ),
      ),
    );
  }
}