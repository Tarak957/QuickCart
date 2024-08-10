import 'package:flutter/material.dart';

class CurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    //!left curve
    final leftfirstCurve = Offset(0, size.height - 30);
    final leftlastCurve = Offset(40, size.height - 30);
    path.quadraticBezierTo(
      leftfirstCurve.dx,
      leftfirstCurve.dy,
      leftlastCurve.dx,
      leftlastCurve.dy,
    );

    //!straight line between curves
    final middlefirstCurve = Offset(0, size.height - 30);
    final middlelastCurve = Offset(size.width - 40, size.height - 30);
    path.quadraticBezierTo(
      middlefirstCurve.dx,
      middlefirstCurve.dy,
      middlelastCurve.dx,
      middlelastCurve.dy,
    );

    // //!right curve
    final rightfirstCurve = Offset(size.width, size.height - 30);
    final rightlastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
      rightfirstCurve.dx,
      rightfirstCurve.dy,
      rightlastCurve.dx,
      rightlastCurve.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
