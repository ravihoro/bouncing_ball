import 'package:flutter/material.dart';

class BallAnimation {
  final AnimationController controller;
  final Animation<double> ballYTranslation;
  final Animation<double> ballWidth;
  final Animation<double> ballHeight;
  final Animation<double> ballShadow;

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
        ballHeight = Tween<double>(begin: 100, end: 85).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.925, 1.000, curve: Curves.easeIn),
        )),
        ballWidth = Tween<double>(begin: 100, end: 115).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.925, 1.000, curve: Curves.easeIn),
        )),
        ballShadow = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.900, 1.000, curve: Curves.easeIn),
          ),
        );
}
