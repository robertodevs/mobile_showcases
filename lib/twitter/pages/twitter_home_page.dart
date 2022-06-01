import 'package:flutter/material.dart';
import 'package:mobile_showcases/twitter/style/twitter_colors.dart';

class TwitterHomePage extends StatefulWidget {
  const TwitterHomePage({Key? key}) : super(key: key);

  @override
  State<TwitterHomePage> createState() => _TwitterHomePageState();
}

class _TwitterHomePageState extends State<TwitterHomePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    const asset = 'assets/twitter/';
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: twitterBlue,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: twitterBlack,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: twitterGrey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: twitterBlack,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: twitterGrey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.mic,
                color: twitterGrey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: twitterGrey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: twitterGrey,
              ),
              label: '')
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  '$asset/cover.png',
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 84,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            '$asset/avatar1.png',
                          ),
                          InkWell(
                            child: Container(
                              width: 113,
                              height: 33,
                              decoration: BoxDecoration(
                                  color: twitterBlack,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(
                                child: Text(
                                  'FOLLOW',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        'Elon Musk',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text('@elonmusk'),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.calendar_month),
                          Text(
                            'Joined June 2009',
                            style: TextStyle(color: twitterGrey),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          Text(
                            '114 following',
                            style: TextStyle(color: twitterGrey),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            '84.5M Followers',
                            style: TextStyle(color: twitterGrey),
                          )
                        ],
                      ),
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
                                  right: 5,
                                  child: Image.asset(
                                    '$asset/mini3.png',
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  child: Image.asset(
                                    '$asset/mini2.png',
                                  ),
                                ),
                                Image.asset(
                                  '$asset/mini1.png',
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              'Followed by Katarina Sheremet, Codemagic, GetWidget, and 89 others.',
                              style: TextStyle(color: twitterGrey),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      // TABBAR
                      TabBar(
                        indicatorColor: twitterBlue,
                        controller: TabController(length: 4, vsync: this),
                        tabs: const [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Tweets',
                              style: TextStyle(color: twitterGrey),
                            ),
                          ),
                          Text('Replies', style: TextStyle(color: twitterGrey)),
                          Text('Media', style: TextStyle(color: twitterGrey)),
                          Text('Likes', style: TextStyle(color: twitterGrey)),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('$asset/avatar2.png'),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text('Elon Musk'),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Image.asset('$asset/verified.png'),
                                    ),
                                    const Text('@elonmusk . 9h'),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.0),
                                  child: Text('🚀💫♥️ Yesss!!! ♥️💫🚀'),
                                ),
                                Image.asset('$asset/post1.png'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      '$asset/comment.png',
                                    ),
                                    const Text('115K'),
                                    Image.asset(
                                      '$asset/retweet.png',
                                    ),
                                    const Text('115K'),
                                    Image.asset(
                                      '$asset/love.png',
                                    ),
                                    const Text('115K'),
                                    Image.asset(
                                      '$asset/share.png',
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('$asset/avatar2.png'),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text('Elon Musk'),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Image.asset('$asset/verified.png'),
                                    ),
                                    const Text('@elonmusk . 9h'),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.0),
                                  child: Text(
                                      'I hope that even my worst critics remain on Twitter, because that is waht free speech means'),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      '$asset/comment.png',
                                    ),
                                    const Text('115K'),
                                    Image.asset(
                                      '$asset/retweet.png',
                                    ),
                                    const Text('115K'),
                                    Image.asset(
                                      '$asset/love.png',
                                    ),
                                    const Text('115K'),
                                    Image.asset(
                                      '$asset/share.png',
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
