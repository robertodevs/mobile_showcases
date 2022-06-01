import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_showcases/twitter/style/twitter_colors.dart';

class TwitterTutorial extends StatefulWidget {
  const TwitterTutorial({Key? key}) : super(key: key);

  @override
  State<TwitterTutorial> createState() => _TwitterTutorialState();
}

class _TwitterTutorialState extends State<TwitterTutorial>
    with TickerProviderStateMixin {
  late final controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: twitterBlue,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Image.asset('assets/twitter/cover.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                _buildAvatarSection(),
                const SizedBox(
                  height: 12,
                ),
                _buildMetadata(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              'assets/twitter/mini1.png',
                            ),
                          ),
                          Positioned(
                            right: 20,
                            child: Image.asset(
                              'assets/twitter/mini2.png',
                            ),
                          ),
                          Image.asset(
                            'assets/twitter/mini3.png',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Expanded(
                      child: Text(
                        'Followed by Katarina Sheremet, Codemagic, GetWidget, and 89 others.',
                      ),
                    ),
                  ],
                ),
                TabBar(
                  indicatorColor: twitterBlue,
                  labelColor: twitterBlue,
                  controller: TabController(length: 4, vsync: this),
                  tabs: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Tweets',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Text('Replies'),
                    Text('Media'),
                    Text('Likes'),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(
                    'assets/twitter/avatar1.png',
                  ),
                  title: Row(
                    children: [
                      const Text('Elon Musk'),
                      Image.asset('assets/twitter/verified.png'),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '@elonmusk . 9h',
                        style: TextStyle(
                          color: twitterGrey,
                        ),
                      )
                    ],
                  ),
                  subtitle: Column(
                    children: [
                      Image.asset('assets/twitter/post1.png'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/twitter/comment.png'),
                          const Text('115k'),
                          Image.asset('assets/twitter/retweet.png'),
                          const Text('335k'),
                          Image.asset('assets/twitter/love.png'),
                          const Text('1.18M'),
                          Image.asset('assets/twitter/share.png'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget _buildMetadata() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Elon Musk',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text(
          '@elonmusk',
          style: TextStyle(
            color: twitterGrey,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: const [
            Icon(Icons.calendar_today),
            SizedBox(
              width: 8,
            ),
            Text(
              'Joined June 2009',
              style: TextStyle(color: twitterGrey),
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: const [
            Text('114 following'),
            SizedBox(
              width: 8,
            ),
            Text('84.5M Followers')
          ],
        )
      ],
    );
  }

  Widget _buildAvatarSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset('assets/twitter/avatar1.png'),
        Container(
          width: 150,
          height: 33,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
            child: Text(
              'FOLLOW',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
