import 'package:flutter/cupertino.dart';

class AppbarCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height=size.height + 20;
    double width=size.width;
    var path=Path();
    path.lineTo(0, height - 60);
    path.quadraticBezierTo(width / 2, height, width, height - 60);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
return true;
  }
  
}