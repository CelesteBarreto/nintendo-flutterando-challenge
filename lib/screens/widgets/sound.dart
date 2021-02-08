import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';

class Sound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 23.55,
          height: 23.56,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.soundLayer0Top,
                AppColors.soundLayer0Bottom
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              /* shape: BoxShape.rectangle, */
              borderRadius: BorderRadius.circular(1)),
          child: Center(
            child: Container(
              width: 19.93,
              height: 19.94,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                gradient: LinearGradient(colors: [
                  AppColors.soundLayer1Top,
                  AppColors.soundLayer1Bottom
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Container(
                width: 14.5,
                height: 14.5,
                margin: EdgeInsets.all(2.72),
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
