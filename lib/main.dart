import 'package:flutter/material.dart';
import 'package:mobile_showcases/mcdonalds/pages/mcdonalds_home_screen.dart';

void main() {
  runApp(const MyApp()
      // DevicePreview(
      //     enabled: true,
      //     tools: const [
      //       ...DevicePreview.defaultTools,
      //     ],
      //     builder: (context) {
      //       return const MyApp();
      //     }),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: ThemeData.light(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: McDonaldsHomeScreen(),
      ),
    );
  }
}
