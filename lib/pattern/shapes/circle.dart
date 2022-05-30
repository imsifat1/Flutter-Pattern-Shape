import 'package:flutter/cupertino.dart';
import 'package:flutter_pattern_shape/pattern/shapes/shape.dart';

class CircleShape extends Shape {
  const CircleShape({required Color color, required Color bgColor, Key? key})
      : super(color: color, bgColor: bgColor, key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Container(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
