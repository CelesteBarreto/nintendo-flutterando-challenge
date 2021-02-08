import 'package:flutter/material.dart';
import 'package:nintendo_swt/screens/widgets/digitalDirectional.dart';
import 'package:nintendo_swt/screens/widgets/bigButtom.dart';
import 'package:nintendo_swt/screens/widgets/sound.dart';
import '../../core/colors/colors.dart';
import '../../core/colors/colors.dart';

class LeftSide extends StatelessWidget {
  final double height;
  final double width;

  const LeftSide({
    Key key,
    this.height,
    this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: AppColors.leftSide,
              borderRadius: BorderRadius.only(topRight: Radius.circular(90))),
        ),
        Positioned(
          top: 14.05,
          left: 14.49,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              AppColors.minusButtomTop,
              AppColors.minusButtomBottom
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          width: 19.02,
          height: 6.34,
        ),
        Positioned(top: 45.77, left: 25, child: BigButtom()),
        Positioned(
            bottom: 35,
            left: 10,
            child: Stack(
              children: [
                Container(
                  height: 86 * 0.9,
                  width: 86 * 0.9,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: DigitalDirectional(
                    direction: "top",
                    width: 28,
                    height: 28,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  child: DigitalDirectional(
                    direction: "left",
                    width: 28,
                    height: 28,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: DigitalDirectional(
                    direction: "bottom",
                    width: 28,
                    height: 28,
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: DigitalDirectional(
                    direction: "right",
                    width: 28,
                    height: 28,
                  ),
                ),
              ],
            )),
        Positioned(
          bottom: 6,
          left: 13.59,
          /*  bottom: 12.69,
          left: 13.59, */
          child: Sound(),
        )
      ],
    );
  }
}
