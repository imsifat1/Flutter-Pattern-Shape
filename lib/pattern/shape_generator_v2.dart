import 'package:flutter/cupertino.dart';
import 'package:flutter_pattern_shape/constants/constants.dart';
import 'package:flutter_pattern_shape/pattern/shapes/circle.dart';
import 'package:flutter_pattern_shape/pattern/shapes/curved_rect.dart';
import 'package:flutter_pattern_shape/pattern/shapes/rounded_rect.dart';
import 'package:flutter_pattern_shape/pattern/shapes/shape.dart';

class ShapeGenerator {
  static Shape generate() {
    final shape = getShapeType();
    final color = getColor();
    final bgColor = getColor(color);
    switch (shape) {
      case ShapeType.circle:
        return CircleShape(
          color: color,
          bgColor: bgColor,
        );
      case ShapeType.curvedRect:
        return CurvedRect(
          color: color,
          bgColor: bgColor,
        );
      case ShapeType.roundedRect:
        // TODO: Handle this case.
        return RoundedRectShape(color: color, bgColor: bgColor);
    }
  }

  static ShapeType getShapeType() =>
      shapeTypeList[random.nextInt(shapeTypeList.length)];

  static Color getColor([Color? exclude]) {
    final length = colorCodes.length - (exclude == null ? 0 : 1);
    final index = random.nextInt(length);
    return colorCodes.where((element) => element != exclude).toList()[index];
  }
}
