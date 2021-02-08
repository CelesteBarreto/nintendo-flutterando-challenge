import 'package:flutter/material.dart';

class LogoSwt extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double borderRadius;

  const LogoSwt({
    Key key,
    this.height,
    this.width,
    this.color = Colors.white,
    this.borderRadius = 35,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        return ClipPath(
          clipper: ClipLogo(),
          child: Container(
            height: constraints.maxHeight * .39,
            width: constraints.maxHeight * .39,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        );
      }),
    );
  }
}

class ClipLogo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var cutLeftSide = RRect.fromLTRBAndCorners(
      size.width * .084,
      size.height * .084,
      size.width * .4,
      size.height * .92,
      bottomLeft: Radius.circular(size.height * .17),
      bottomRight: Radius.circular(size.height * 0),
      topLeft: Radius.circular(size.height * .17),
      topRight: Radius.circular(size.height * 0),
    );

    var addClipCircle = Rect.fromCircle(
      center: Offset(size.width * .25, size.height * .29),
      radius: size.height * .09,
    );

    var subtractClipCircle = Rect.fromCircle(
      center: Offset(size.width * .79, size.height * .54),
      radius: size.height * .09,
    );

    var cutMiddle = Rect.fromCenter(
      center: Offset(
        size.width * .53,
        size.height * .5,
      ),
      height: size.height,
      width: size.width * .1,
    );

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0, size.height * 1)
      ..lineTo(size.width * 1, size.height * 1)
      ..lineTo(size.width * 1, size.height * 0)
      ..fillType = PathFillType.evenOdd
      ..addRRect(cutLeftSide)
      ..addOval(addClipCircle)
      ..addOval(subtractClipCircle)
      ..addRect(cutMiddle);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
