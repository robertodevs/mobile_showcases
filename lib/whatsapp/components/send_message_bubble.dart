import 'package:flutter/material.dart';
import 'package:mobile_showcases/whatsapp/components/custom_shape.dart';
import 'package:mobile_showcases/whatsapp/style/whatsapp_colors.dart';

class SendMessageBubble extends StatelessWidget {
  const SendMessageBubble({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: wtsGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Text(
              message,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
        CustomPaint(
          painter: CustomShape(wtsGrey),
        )
      ],
    );
  }
}
