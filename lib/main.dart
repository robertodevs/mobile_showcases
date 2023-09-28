import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ecommerce/pages/sneakers_home_screen.dart';

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
      data: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.lexendTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SneakersHomeScreen(),
      ),
    );
  }
}
