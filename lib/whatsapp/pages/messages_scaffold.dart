import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_showcases/whatsapp/style/whatsapp_colors.dart';

class MessagesScaffold extends StatelessWidget {
  const MessagesScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Edit',
                style: TextStyle(color: wtsBlue),
              ),
              Icon(
                CupertinoIcons.add,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Chats',
            style: TextStyle(fontSize: 32),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Broadcast Lists',
                style: TextStyle(color: wtsBlue),
              ),
              Text(
                'New Group',
                style: TextStyle(color: wtsBlue),
              ),
            ],
          ),
          const Divider(),
          _buildChatTile('assets/whatsapp/profile01.png', 'Brita Perry'),
          _buildChatTile('assets/whatsapp/profile02.png', 'Todd Carrignton'),
          _buildChatTile('assets/whatsapp/profile03.png', 'Communityville'),
          _buildChatTile('assets/whatsapp/profile03.png', 'Whatsapp Support'),
          _buildChatTile('assets/whatsapp/profile02.png', 'Roberto Juarez'),
          _buildChatTile('assets/whatsapp/profile01.png', 'Communityville'),
        ],
      ),
    );
  }

  Row _buildChatTile(String avatar, String name) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(avatar),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  '12:02 PM',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: const [
                Icon(
                  CupertinoIcons.check_mark,
                  color: Colors.grey,
                  size: 12,
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  CupertinoIcons.photo_camera,
                  color: Colors.grey,
                  size: 12,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Check out this tiger',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(),
          ],
        ))
      ],
    );
  }
}
