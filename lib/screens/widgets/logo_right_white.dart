import 'package:flutter/material.dart';

class RightLogoWhite extends StatefulWidget {
  final double width;
  final double height;

  const RightLogoWhite({
    Key key,
    this.width = 60,
    this.height = 140,
  }) : super(key: key);
  @override
  _RightLogoWhiteState createState() => _RightLogoWhiteState();
}

class _RightLogoWhiteState extends State<RightLogoWhite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      /* alignment: Alignment.center, */
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          )),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 40),
          width: MediaQuery.of(context).size.height * (24 / 667),
          height: MediaQuery.of(context).size.height * (24 / 667),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
