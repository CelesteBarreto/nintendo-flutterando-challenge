import 'package:flutter/material.dart';
import 'package:nintendo_swt/screens/widgets/elipse.dart';
import 'package:nintendo_swt/screens/widgets/leftSide.dart';
import 'package:nintendo_swt/screens/widgets/logo_left_white.dart';
import 'package:nintendo_swt/screens/widgets/logo_right_white.dart';
import 'package:nintendo_swt/screens/widgets/logo_swt.dart';
import 'package:nintendo_swt/screens/widgets/rightSide.dart';
import 'package:nintendo_swt/screens/widgets/smallLogo.dart';
import '../core/colors/colors.dart';

class NintendoScreen extends StatefulWidget {
  @override
  _NintendoScreenState createState() => _NintendoScreenState();
}

class _NintendoScreenState extends State<NintendoScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        /* backgroundColor: color, */
        body: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        AppColors.bgScreenTop,
        AppColors.bgScreenBottom,
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.fromLTRB(21.74, 24.47, 21.74, 24.47),
              width: size.height * (331.52 / 667),
              height: size.height * (331.52 / 667),
              decoration: BoxDecoration(
                  color: AppColors.screen,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoSwt(
                      height: 50,
                      width: 50,
                    ),
                    /* LeftLogoWhite(
                        height: MediaQuery.of(context).size.height * (142 / 667),
                        width: MediaQuery.of(context).size.height * (69 / 667),
                      ), */
                    /*  SizedBox(
                        width: 12,
                      ), */
                    /* RightLogoWhite(
                        height: MediaQuery.of(context).size.height * (140 / 667),
                        width: MediaQuery.of(context).size.height * (60 / 667),
                      ) */
                  ],
                ),
              )),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LeftSide(
                height: MediaQuery.of(context).size.height * (257.38 / 667),
                width: MediaQuery.of(context).size.height * (123.19 / 667),
              ),
              Column(
                children: [
                  Elipse(
                    active: true,
                  ),
                  Elipse(
                    active: false,
                  ),
                  Elipse(
                    active: false,
                  ),
                  Elipse(
                    active: false,
                  ),
                ],
              ),
              Container(
                height: 120,
                child: LogoSwt(
                  height: 50,
                  width: 50,
                  color: AppColors.smallLogo,
                  borderRadius: 10,
                ),
              ),
              Column(
                children: [
                  Elipse(
                    active: false,
                  ),
                  Elipse(
                    active: false,
                  ),
                  Elipse(
                    active: false,
                  ),
                  Elipse(
                    active: false,
                  ),
                ],
              ),
              RightSide(
                  height: MediaQuery.of(context).size.height * (257.38 / 667),
                  width: MediaQuery.of(context).size.height * (123.19 / 667))
            ],
          ),
        ],
      ),
    ));
  }
}
