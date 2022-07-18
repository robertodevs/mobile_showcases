import 'package:flutter/material.dart';

class TwitchVideosPage extends StatelessWidget {
  const TwitchVideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF6F30E0);
    const nikeDisabledColor = Colors.black;
    return Scaffold(
      bottomNavigationBar:
          _buildBottomNavigationBar(primaryColor, nikeDisabledColor),
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          _buildTitle(),
          _buildLiveImage(),
          _buildMetaData(),
          _buildChipsInfo(),
          _buildGamesIRLOptions(primaryColor),
          _buildOptions(primaryColor),
          _buidSecondTitle(),
          _buildHorizontalOptions()
        ],
      ),
    );
  }

  Widget _buildLiveImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Image.asset('assets/twitch/live0.png'),
    );
  }

  Widget _buidSecondTitle() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Live channels we thing you\'ll like',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding _buildGamesIRLOptions(Color primaryColor) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Games',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.games,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Container(
              height: 45,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Esports',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.wind_power,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptions(Color primaryColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'IRL',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.games,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Container(
              height: 45,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Music',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalOptions() {
    return SizedBox(
      height: 100,
      child: ListView(
        padding: const EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/twitch/live1.png'),
          const SizedBox(
            width: 8,
          ),
          Image.asset('assets/twitch/live1.png'),
          const SizedBox(
            width: 8,
          ),
          Image.asset('assets/twitch/live1.png'),
        ],
      ),
    );
  }

  Widget _buildChipsInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: const [
          Chip(
            label: Text('English'),
          ),
          SizedBox(
            width: 8,
          ),
          Chip(
            label: Text('Canada'),
          ),
          SizedBox(
            width: 8,
          ),
          Chip(
            label: Text('Twaiwan'),
          ),
          SizedBox(
            width: 8,
          ),
          Chip(
            label: Text('Canada'),
          ),
        ],
      ),
    );
  }

  Padding _buildMetaData() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: const [
          Text(
            'coco_chm',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Just Chatting',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildTitle() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Discover',
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.pink,
          child: Icon(Icons.person_off_outlined),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.video_call,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.inbox,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.tv,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(
      Color primaryColor, Color nikeDisabledColor) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: nikeDisabledColor,
      items:  [
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: nikeDisabledColor,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: nikeDisabledColor,
            ),
            label: ''),
      ],
    );
  }
}
