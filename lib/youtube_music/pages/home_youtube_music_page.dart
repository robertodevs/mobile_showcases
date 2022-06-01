import 'package:flutter/material.dart';

class HomeYoutubeMusicPage extends StatefulWidget {
  const HomeYoutubeMusicPage({Key? key}) : super(key: key);

  @override
  _HomeYoutubeMusicPageState createState() => _HomeYoutubeMusicPageState();
}

class _HomeYoutubeMusicPageState extends State<HomeYoutubeMusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/youtube_music/logo.png'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tv),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/youtube_music/avatar.png'),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/youtube_music/background.png',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  child: ListView(
                    padding: const EdgeInsets.only(left: 16),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Chip(
                        backgroundColor: Color(0xFF51585C),
                        label: Text(
                          'Workout',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Chip(
                        backgroundColor: Color(0xFF51585C),
                        label: Text(
                          'Energise',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Chip(
                        backgroundColor: Color(0xFF51585C),
                        label: Text(
                          'Relax',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Chip(
                        backgroundColor: Color(0xFF51585C),
                        label: Text(
                          'Community',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Chip(
                        backgroundColor: Color(0xFF51585C),
                        label: Text(
                          'Community',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset('assets/youtube_music/avatar.png'),
                      const SizedBox(
                        width: 24,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'MUSIC TO GET YOU STARTED',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Welcome, Roberto Juarez',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -2),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 220,
                  child: ListView(
                    padding: const EdgeInsets.only(left: 16),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/youtube_music/singer1.png'),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            'Megan Thee Stalion',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            '5.09M Subscribers',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 0.7),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Image.asset('assets/youtube_music/singer2.png'),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            'Megan Thee Stalion',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            '5.09M Subscribers',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 0.7),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Image.asset('assets/youtube_music/singer3.png'),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            'Megan Thee Stalion',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            '5.09M Subscribers',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 0.7),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'START RADIO BASED ON A SONG',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Quick picks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.025,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading:
                            Image.asset('assets/youtube_music/singer4.png'),
                        title: const Text(
                          'Diamonds',
                          style: TextStyle(
                            color: Color(0xFF818181),
                            fontSize: 14,
                            letterSpacing: 0.025,
                          ),
                        ),
                        subtitle: const Text(
                          'Rihana',
                          style: TextStyle(
                            color: Color(0xFF505050),
                            fontSize: 14,
                            letterSpacing: 0.025,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                      ListTile(
                        leading:
                            Image.asset('assets/youtube_music/singer5.png'),
                        title: const Text(
                          'Diamonds',
                          style: TextStyle(
                            color: Color(0xFF818181),
                            fontSize: 14,
                            letterSpacing: 0.025,
                          ),
                        ),
                        subtitle: const Text(
                          'Rihana',
                          style: TextStyle(
                            color: Color(0xFF505050),
                            fontSize: 14,
                            letterSpacing: 0.025,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                      ListTile(
                        leading:
                            Image.asset('assets/youtube_music/singer6.png'),
                        title: const Text(
                          'Diamonds',
                          style: TextStyle(
                            color: Color(0xFF818181),
                            fontSize: 14,
                            letterSpacing: 0.025,
                          ),
                        ),
                        subtitle: const Text(
                          'Rihana',
                          style: TextStyle(
                            color: Color(0xFF505050),
                            fontSize: 14,
                            letterSpacing: 0.025,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              selectedItemColor: const Color(0xFF494949),
              backgroundColor: const Color(0xFF131313),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Color(0xFF494949)),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.music_note), label: 'Library'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
