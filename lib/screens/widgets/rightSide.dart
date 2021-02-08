import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';
import 'package:nintendo_swt/screens/widgets/bigButtom.dart';
import 'package:nintendo_swt/screens/widgets/digitalDirectional.dart';

class RightSide extends StatelessWidget {
  final double width;
  final double height;

  const RightSide({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: AppColors.rightSide,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(90))),
        ),
        Positioned(
          top: 14.05,
          right: 14.49,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 19.02,
                height: 6.34,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColors.minusButtomTop,
                    AppColors.minusButtomBottom
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
              ),
              Container(
                width: 6.34,
                height: 19.02,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColors.minusButtomTop,
                    AppColors.minusButtomBottom
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 40,
            left: 15,
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
            right: 25,
            bottom: 45,
            child: BigButtom(
              height: 57.09,
              width: 57.00,
            )),
        Positioned(
            bottom: 6,
            right: 13.59,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: AppColors.homeLayer0Top,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.homeLayer0Border)),
              child: Center(
                child: LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    /* 22 menor circulo pelo maior circulo 30 */
                    height: constraints.maxHeight * (22 / 30),
                    decoration: BoxDecoration(
                        color: AppColors.homeLayer1Top,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.homeLayer1Border)),
                    child: Center(
                      child: Icon(
                        Icons.home,
                        size: constraints.maxHeight * (15 / 30),
                      ),
                    ),
                  );
                }),
              ),
            ))
      ],
    );
  }
}
