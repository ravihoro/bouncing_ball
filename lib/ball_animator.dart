import 'package:bouncing_ball/ball_page.dart';
import 'package:flutter/material.dart';

class BallAnimator extends StatefulWidget {
  @override
  _BallAnimatorState createState() => _BallAnimatorState();
}

class _BallAnimatorState extends State<BallAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );
    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BallPage(
            _controller,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.replay),
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}
