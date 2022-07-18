import 'package:flutter/material.dart';
import 'package:mobile_showcases/apple_music/components/wave_music_effect.dart';
import 'package:mobile_showcases/apple_music/style/apple_music_colors.dart';

class AppleMusicHome extends StatelessWidget {
  const AppleMusicHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainStyle = TextStyle(color: appleMusicRed, fontSize: 16);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Sort',
              style: mainStyle,
            ),
          )
        ],
        title: const Text(
          'Library',
          style: TextStyle(color: appleMusicRed),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            color: appleMusicRed,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const Text(
            'Songs',
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Stack(
                          children: [
                            Image.asset('assets/apple_music/song01.png'),
                            const Positioned(
                              left: 10,
                              top: 5,
                              child: WaveMusicEffect(),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Song name'),
                          Text('Artist name'),
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  )
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Stack(
                          children: [
                            Image.asset('assets/apple_music/song01.png'),
                            const Positioned(
                              left: 10,
                              top: 5,
                              child: WaveMusicEffect(),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Song name'),
                          Text('Artist name'),
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  )
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Stack(
                          children: [
                            Image.asset('assets/apple_music/song01.png'),
                            const Positioned(
                              left: 10,
                              top: 5,
                              child: WaveMusicEffect(),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Song name'),
                          Text('Artist name'),
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  )
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Stack(
                          children: [
                            Image.asset('assets/apple_music/song01.png'),
                            const Positioned(
                              left: 10,
                              top: 5,
                              child: WaveMusicEffect(),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Song name'),
                          Text('Artist name'),
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  )
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          )
        ],
      ),
    );
  }
}
