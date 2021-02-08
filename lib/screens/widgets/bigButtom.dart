import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';

class BigButtom extends StatelessWidget {
  final double width;
  final double height;

  const BigButtom({
    Key key,
    this.width = 58,
    this.height = 58,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.bigButtonLayerBorder),
          gradient: LinearGradient(colors: [
            AppColors.bigButtonLayer0Top,
            AppColors.bigButtonLayer0Bottom
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Center(
        child: Container(
          /* diminui o círculo maior pelo circulo menor e encoontrei 11 */
          margin:
              EdgeInsets.all(MediaQuery.of(context).size.width * (11 / 667)),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  AppColors.bigButtonLayer1Top,
                  AppColors.bigButtonLayer1Botto
                ],
                /* alinhamento do gradiente - aparência profundidade*/
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
          child: Container(
            margin:
                EdgeInsets.all(MediaQuery.of(context).size.width * (4 / 667)),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.bigButtonLayerBorder),
                gradient: LinearGradient(colors: [
                  AppColors.bigButtonLayer2Top,
                  AppColors.bigButtonLayer2Botto
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
        ),
      ),
    );
  }
}
