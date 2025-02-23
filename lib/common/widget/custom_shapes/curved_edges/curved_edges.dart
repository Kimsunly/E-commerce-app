import 'package:flutter/material.dart';

class TcustomCurvedEdges extends CustomClipper<Path>{
  @overide
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0, size.height)
 }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
