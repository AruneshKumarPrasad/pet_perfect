import 'package:flutter/material.dart';

class GColor {
  // Color of Scaffold, Appbar,etc.
  static const themeColor = Color.fromRGBO(224, 224, 224, 1);
  static const List<BoxShadow> neuBoxShadowScheme = [
    // Shadow for bottom left and up
    BoxShadow(
      color: Color.fromRGBO(245, 245, 245, 1),
      offset: Offset(-2, -2),
      spreadRadius: 1,
      blurRadius: 2,
    ),
    // Shadow for bottom right and down
    BoxShadow(
      color: Color.fromRGBO(158, 158, 158, 1),
      offset: Offset(2, 2),
      spreadRadius: 1,
      blurRadius: 2,
    ),
  ];
}
