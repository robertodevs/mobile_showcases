import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_showcases/whatsapp/components/custom_shape.dart';

class ReceivedMessageBubble extends StatelessWidget {
  const ReceivedMessageBubble({Key? key, required this.message})
      : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi),
          child: CustomPaint(
            painter: CustomShape(Colors.grey),
          ),
        ),
        Flexible(
            child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(18),
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
          ),
          child: Text(
            message,
            style: const TextStyle(fontSize: 14),
          ),
        ))
      ],
    );
  }
}
