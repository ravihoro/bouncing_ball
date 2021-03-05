import 'package:flutter/material.dart';

class BallAnimation {
  final AnimationController controller;
  final Animation<double> ballYTranslation;
  final Animation<double> ballWidth;
  final Animation<double> ballHeight;

  BallAnimation(this.controller)
      : ballYTranslation = Tween<double>(begin: 0, end: 100).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000,
              1.000,
              curve: Curves.easeIn,
            ),
          ),
        ),
        ballHeight = Tween<double>(begin: 100, end: 90).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.900, 1.000, curve: Curves.easeIn),
        )),
        ballWidth = Tween<double>(begin: 100, end: 110).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.900, 1.000, curve: Curves.easeIn),
        ));
}
