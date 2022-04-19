import 'package:flutter/material.dart';
import 'package:mobile_showcases/fifa/style/nike_colors.dart';

class PlayerDetailPage extends StatelessWidget {
  const PlayerDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nikePrimaryColor,
      appBar: AppBar(
        backgroundColor: nikePrimaryColor,
        title: Text('Player Detail'),
        centerTitle: false,
        elevation: 0,
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 60,
            child: const Center(
                child: Text(
              'PURCHASE',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
            decoration: const BoxDecoration(
              color: nikeButtonColor,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 530,
            child: Image.asset(
              'assets/fifa/player.png',
            ),
          ),
          // MetaData Player
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'LIONEL MESSI',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/fifa/flag.png'),
                        const Text(
                          'ARGENTINA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'GOLES 567',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                // RIGHT SIDE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/fifa/rating.png'),
                    Row(
                      children: [
                        Image.asset('assets/fifa/easport.png'),
                        Image.asset('assets/fifa/fifa.png'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
