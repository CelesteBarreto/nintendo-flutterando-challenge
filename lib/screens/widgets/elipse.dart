import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';

class Elipse extends StatelessWidget {
  final bool active;

  const Elipse({Key key, this.active}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      /* padding: EdgeInsets.only(bottom: 25), */
      margin: EdgeInsets.only(bottom: 7.25),
      width: 5,
      height: 5,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: active == true ? AppColors.lampOn : AppColors.lampOff),
    );
  }
}
