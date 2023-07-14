import 'package:flutter/material.dart';
import 'package:mobile_showcases/snkrs/style/colors.dart';

class SnkrsHomeScreen extends StatelessWidget {
  const SnkrsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomArea(),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          _buildSnkrImage(),

          // purchase quickly
          Text(
            'Purchase Quickly',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: snkrsBlack,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Buy sneakers in seconds, directly within the app. Store all your info to expedite the process.',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomArea() {
    return SafeArea(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // dot indicators
        _buildDotIndicators(),
        const SizedBox(
          height: 30,
        ),
        _buildBottomButtons(),
        const SizedBox(
          height: 10,
        ),
        // join as a guest
        const Text('Continue as a Guest', style: TextStyle(color: Colors.grey)),
      ],
    ));
  }

  Widget _buildDotIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
            color: snkrsBlack,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }

  Widget _buildBottomButtons() {
    return Row(
      children: [
        // two buttons
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    // rounded
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(color: snkrsBlack),
                  )),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: snkrsBlack,
                  // rounded
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                onPressed: () {},
                child: const Text('Join Now'),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSnkrImage() {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'GOT \n\'EM',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w900,
                    color: snkrsBlack,
                    letterSpacing: -10,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 70,
            child: Column(
              children: [
                Image.asset(
                  'assets/snkrs/nike.png',
                  width: 250,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
