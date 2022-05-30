import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_pattern_shape/pattern/shapes/shape.dart';

import '../../constants/constants.dart';

class CurvedRect extends Shape {
  CurvedRect({required Color color, required Color bgColor, Key? key})
      : _cornerNumber = random.nextInt(4),
        super(bgColor: bgColor, color: color, key: key);

  final int _cornerNumber;
  @override
  Widget build(BuildContext context) {
    const rDiameter = Radius.circular(diameter);
    return Container(
      color: bgColor,
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                topLeft: _cornerNumber == 0 ? rDiameter : Radius.zero,
                topRight: _cornerNumber == 1 ? rDiameter : Radius.zero,
                bottomRight: _cornerNumber == 2 ? rDiameter : Radius.zero,
                bottomLeft: _cornerNumber == 3 ? rDiameter : Radius.zero)),
      ),
    );
  }
}
