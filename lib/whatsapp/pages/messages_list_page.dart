import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_showcases/whatsapp/pages/messages_scaffold.dart';

class MessagesListPage extends StatelessWidget {
  const MessagesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: 'Status',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.phone),
          label: 'Calls',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.camera),
          label: 'Camera',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.chat_bubble),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.settings),
          label: 'Settings',
        ),
      ]),
      tabBuilder: (BuildContext context, int index) {
        late final CupertinoTabView page;
        switch (index) {
          case 0:
            page = CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: MessagesScaffold(),
                );
              },
            );
            break;
          case 1:
            page = CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: SizedBox(),
                );
              },
            );
            break;
          case 2:
            page = CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: SizedBox(),
                );
              },
            );
            break;
          case 3:
            page = CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: SizedBox(),
                );
              },
            );
            break;
          case 4:
            page = CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: SizedBox(),
                );
              },
            );
            break;
        }
        return page;
      },
    );
  }
}
