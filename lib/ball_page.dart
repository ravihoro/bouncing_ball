import 'package:bouncing_ball/ball_animation.dart';
import 'package:flutter/material.dart';

class BallPage extends StatelessWidget {
  final BallAnimation animation;

  BallPage(AnimationController controller)
      : animation = BallAnimation(controller);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation.controller,
      builder: _buildAnimation,
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Center(
      child: Transform(
        transform: Matrix4.translationValues(
            0.0, animation.ballYTranslation.value, 0.0),
        child: Container(
          height: animation.ballHeight.value,
          width: animation.ballWidth.value,
          decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.black),
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
