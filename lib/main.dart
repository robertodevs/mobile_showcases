import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_showcases/whatsapp/pages/messages_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.light,
      ),
      home: MessagesListPage(),
    );
  }
}
