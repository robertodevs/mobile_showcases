import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:mobile_showcases/mac_app/pages/mac_app_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MacosApp(
      debugShowCheckedModeBanner: false,
      home: MacAppHomePage(),
    );
  }
}
