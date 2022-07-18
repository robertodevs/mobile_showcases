import 'package:flutter/material.dart';

class WaveBar extends StatelessWidget {
  const WaveBar({
    Key? key,
    required this.barScale,
    required this.barHeight,
    required this.updateScale,
    required this.duration,
  }) : super(key: key);

  final double barScale;
  final double barHeight;
  final void Function(double) updateScale;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0.2, end: barScale),
      duration: Duration(milliseconds: duration),
      curve: Curves.easeInOutBack,
      onEnd: () {
        barScale == 1.0 ? updateScale(0.2) : updateScale(1.0);
      },
      builder: (context, double? value, child) {
        return Transform.scale(
          scaleY: value,
          origin: Offset(2.5, barHeight / 2),
          child: Container(
            color: Colors.white,
            width: 5,
            height: barHeight,
          ),
        );
      },
    );
  }
}
