import 'package:flutter/material.dart';

class LeftLogoWhite extends StatefulWidget {
  final double width;
  final double height;

  const LeftLogoWhite({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  _LeftLogoWhiteState createState() => _LeftLogoWhiteState();
}

class _LeftLogoWhiteState extends State<LeftLogoWhite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      /* alignment: Alignment.center, */
      width: widget.width,
      height: widget.height,
      /* margin: EdgeInsets.fromLTRB(122.99, 140.27, 122.99, 140.27), */
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), bottomLeft: Radius.circular(35))),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24), topLeft: Radius.circular(24))),
        child: Align(
          alignment: Alignment.topCenter,
          heightFactor: 3,
          child: Container(
            width: MediaQuery.of(context).size.height * (24 / 667),
            height: MediaQuery.of(context).size.height * (24 / 667),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
