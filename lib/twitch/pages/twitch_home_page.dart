import 'package:flutter/material.dart';

class TwitchHomePage extends StatelessWidget {
  const TwitchHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF6F30E0);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome \nto Twitch',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              height: 45,
              width: double.infinity,
              child: const Center(
                child: Text('Log in',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    )),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 45,
              width: double.infinity,
              child: const Center(
                child: Text('Sign Up',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    )),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Theme.of(context).dividerColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
