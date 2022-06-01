// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class YoutubeHome extends StatelessWidget {
  const YoutubeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const assets = 'assets/youtube/';
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        '$assets/video.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Positioned(
                          top: 5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 2,
                            color: Colors.grey,
                          ),
                        ),
                        Positioned(
                          top: 5,
                          child: Container(
                            height: 2,
                            width: 100,
                            color: Colors.red,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 100,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 40,
                    right: 8,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.tv,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )
                      ],
                    )),
                Positioned(
                  bottom: 120,
                  left: 130,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 40,
                      ),
                      const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 75,
                      ),
                      const Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, top: 0),
              child: Text(
                  'LION (feat. Chris Brown & Brandon Lake) | Elevation Worship '),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 2),
              child: Row(
                children: [
                  const Text(
                    '77K VIEWS - 4mo ago',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    '#worship #ElevationWorship',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('$assets/like.png'),
                      const Text(
                        '12.4k',
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('$assets/dislike.png'),
                      const Text(
                        'Dislike',
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('$assets/share.png'),
                      const Text(
                        'Share',
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('$assets/download.png'),
                      const Text(
                        'Download',
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('$assets/cut.png'),
                      const Text(
                        'Clip',
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('$assets/save.png'),
                      const Text(
                        'Save',
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(),
            ListTile(
              leading: Image.asset('$assets/avatar1.png'),
              title: const Text('Elevation Worship'),
              subtitle: const Text('86.2k subscribers'),
              trailing: const Text(
                'SUBSCRIBE',
                style: TextStyle(color: Colors.red),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  const Text(
                    'Comments',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    '169',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset('$assets/avatar2.png'),
              title: const Text(
                'Prepare a way, prepare a way of the Lord, prepare a way, this is a comment text',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Image.asset('$assets/video2.png'),
            ListTile(
              leading: Image.asset('$assets/avatar3.png'),
              title: const Text(
                  'NO ONE (feat. Chris Brown & Brandon Lake) | Elevation Worship '),
            )
          ],
        ),
      ),
    );
  }
}
