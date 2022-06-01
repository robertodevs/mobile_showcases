// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_showcases/whatsapp/components/received_message_bubble.dart';
import 'package:mobile_showcases/whatsapp/components/send_message_bubble.dart';
import 'package:mobile_showcases/whatsapp/style/whatsapp_colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: const Icon(CupertinoIcons.back),
        trailing: const Icon(CupertinoIcons.video_camera),
        middle: Row(
          children: [
            const Icon(
              CupertinoIcons.profile_circled,
              color: Colors.grey,
              size: 32,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text('Britta Perry'),
          ],
        ),
      ),
      child: ListView(
        children: [
          Stack(
            children: [
              Image.asset(("assets/whatsapp/background.png")),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: 75,
                      decoration: BoxDecoration(
                          color: wtsGreen,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: const Offset(1, 1),
                            )
                          ]),
                      child: const Center(
                        child: Text(
                          'Today',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 300,
                      decoration: const BoxDecoration(color: wtsYellow),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Message and calls are end-to-end encrypted. NO one outside of this chat, not even WhatsApp, can read or list to them. To to learn more',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const SendMessageBubble(message: "Hello, how are you?"),
                    const ReceivedMessageBubble(
                        message: 'I am doing great and you?'),
                    const SendMessageBubble(message: "Hello, how are you?"),
                    const ReceivedMessageBubble(
                        message: 'I am doing great and you?')
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.81,
                  ),
                  SizedBox(
                    height: 75,
                    child: Container(
                      color: wtsGreen,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, bottom: 24),
                        child: Row(
                          children: [
                            const Icon(CupertinoIcons.add),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: CupertinoTextField(
                                controller: TextEditingController(),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Icon(CupertinoIcons.camera),
                            const SizedBox(
                              width: 16,
                            ),
                            const Icon(CupertinoIcons.mic),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
