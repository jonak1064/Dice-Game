//import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:dice_game/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradeintContainer(
          colors1: [
            //passed the value of the parameters
            Color.fromRGBO(157, 193, 245, 0.576),
            Color.fromRGBO(124, 47, 71, 0.242),
          ],
        ),
      ),
    ),
  );
}
