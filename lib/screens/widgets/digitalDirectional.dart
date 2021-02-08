import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nintendo_swt/core/colors/colors.dart';
import 'dart:math';

class DigitalDirectional extends StatelessWidget {
  final String direction;
  final double width;
  final double height;
  final bool isletra;

  const DigitalDirectional(
      {Key key, this.direction, this.width, this.height, this.isletra = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    var gradient = [];
    var align = [];
    /* var icone; */
    var rotacao;
    var letra;

    switch (direction) {
      case 'top':
        rotacao = 0;
        gradient = [
          AppColors.actionButtonTopLayer0Top,
          AppColors.actionButtonTopLayer0Bottom,
          AppColors.actionButtonTopLayer1Top,
          AppColors.actionButtonTopLayer1Bottom
        ];
        align = [
          Alignment.topCenter,
          Alignment.bottomCenter,
          Alignment.topCenter,
          Alignment.bottomCenter,
        ];
        letra = "X";
        /* icone = (Icons.add); */
        /* icone = (FontAwesomeIcons.caretUp); */
        break;
      case 'left':
        rotacao = 270;
        gradient = [
          AppColors.actionButtonLeftLayer0Top,
          AppColors.actionButtonLeftLayer0Bottom,
          AppColors.actionButtonLeftLayer1Top,
          AppColors.actionButtonLeftLayer1Bottom
        ];
        align = [
          Alignment.topCenter,
          Alignment.bottomCenter,
          Alignment.topCenter,
          Alignment.bottomCenter,
        ];
        letra = "Y";
        /* icone = (FontAwesomeIcons.caretLeft); */
        break;
      case 'bottom':
        rotacao = 180;
        gradient = [
          AppColors.actionButtonBottomLayer0Top,
          AppColors.actionButtonBottomLayer0Bottom,
          AppColors.actionButtonBottomLayer1Top,
          AppColors.actionButtonBottomLayer1Bottom
        ];
        align = [
          Alignment.topLeft,
          Alignment.bottomRight,
          Alignment.topCenter,
          Alignment.bottomCenter,
        ];
        letra = "A";
        /* icone = (FontAwesomeIcons.caretDown); */
        break;
      case 'right':
        rotacao = 90;
        gradient = [
          AppColors.actionButtonRightLayer0Top,
          AppColors.actionButtonRightLayer0Bottom,
          AppColors.actionButtonRightLayer1Top,
          AppColors.actionButtonRightLayer1Bottom
        ];
        align = [
          Alignment.topLeft,
          Alignment.bottomRight,
          Alignment.topCenter,
          Alignment.bottomCenter,
        ];
        letra = "B";
        /* icone = (FontAwesomeIcons.caretRight); */
        break;
      default:
    }

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [gradient[0], gradient[1]],
            begin: align[0],
            end: align[1],
          )),
      child: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight * 0.8,
            width: constraints.maxWidth * 0.8,
            /* margin: EdgeInsets.all(size.height * ((28 - 23) / 667)), */
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [gradient[2], gradient[3]],
                    begin: align[2],
                    end: align[3])),
            child: Center(
              /* LayoutBuilder para saber o tamanho da tela */
              child: LayoutBuilder(builder: (context, constraints) {
                var a;
                constraints.maxHeight < constraints.maxWidth
                    ? a = constraints.maxHeight
                    : a = constraints.maxWidth;
                return Transform.rotate(
                  angle: isletra ? 0 : rotacao * pi / 180,
                  child: Center(
                      child: isletra
                          ? Text(
                              letra,
                              style: TextStyle(
                                  color: AppColors.actionButtonTopLayer2Bottom,
                                  fontFamily: "OpenSansLight"),
                            )
                          : ClipPath(
                              clipper: ClipLogo(),
                              child: Container(
                                padding: EdgeInsets.only(bottom: 1),
                                width: 5,
                                height: 5,
                                color:
                                    AppColors.digitalDirectionTopLayer2Bottom,
                              ),
                            )),
                );
              }),
            ),
          );
        }),
      ),
    );
  }
}

class ClipLogo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      ..moveTo(size.width * 0.5, size.height * 0.1)
      ..lineTo(size.width * 0, size.height * 1)
      ..lineTo(size.width * 1, size.height * 1)
      ..lineTo(size.width * 0.5, size.height * 0.1);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
