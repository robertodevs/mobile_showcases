import 'package:flutter/material.dart';
import 'package:mobile_showcases/snkrs/pages/snkrs_home_screen.dart';
import 'package:mobile_showcases/snkrs/style/colors.dart';

class SnkrsSplashScreen extends StatefulWidget {
  const SnkrsSplashScreen({Key? key}) : super(key: key);

  @override
  State<SnkrsSplashScreen> createState() => _SnkrsSplashScreenState();
}

class _SnkrsSplashScreenState extends State<SnkrsSplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SnkrsHomeScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snkrsRed,
      body: Center(
        child: Image.asset(
          'assets/snkrs/snkr-logo.png',
          width: 150,
        ),
      ),
    );
  }
}
