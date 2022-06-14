import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieShowCase extends StatelessWidget {
  const LottieShowCase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'CONGRATULATIONS!',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Center(
            child: Lottie.network('https://assets7.lottiefiles.com/packages/lf20_touohxv0.json'),
          ),
          Center(
            child: Text(
              'YOU WIN 5 TOKENS!',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          )
        ],
      ),
    );
  }
}
