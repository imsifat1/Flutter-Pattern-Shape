import 'package:flutter/cupertino.dart';

abstract class Shape extends StatelessWidget {
  const Shape({required this.color, required this.bgColor, Key? key})
      : super(key: key);
  final Color color, bgColor;
}
