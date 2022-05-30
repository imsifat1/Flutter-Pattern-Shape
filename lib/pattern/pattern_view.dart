import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pattern_shape/constants/constants.dart';
import 'package:flutter_pattern_shape/pattern/shape_generator_v2.dart';

class PatternView extends StatefulWidget {
  const PatternView({Key? key}) : super(key: key);

  @override
  State<PatternView> createState() => _PatternViewState();
}

class _PatternViewState extends State<PatternView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final column = size.width ~/ diameter;
    final count = column * (size.height / diameter).round();
    return Scaffold(
        backgroundColor: colorCodes.first,
        floatingActionButton: MaterialButton(
          onPressed: () => setState(() {}),
          onLongPress: startTimer,
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          shape: const StadiumBorder(),
          child: const Text('REFRESH'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: GridView.count(
          crossAxisCount: column,
          children: List.generate(count, (index) => ShapeGenerator.generate()),
        ));
  }

  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (Timer timer) => setState(() {}),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
