import 'package:flutter/material.dart';
import 'package:mobile_showcases/nike/style/nike_colors.dart';

class ClubHouseHome extends StatelessWidget {
  const ClubHouseHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const asset = 'assets/clubhouse/';
    const green = Color(0xff57BC71);
    const card = Color(0xffF7F6F0);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(asset),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: green,
        onPressed: () {},
        label: Row(
          children: const [
            Icon(Icons.add),
            Text('Room'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: nikeDisabledColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
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
                Icons.calendar_month,
                color: nikeDisabledColor,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: nikeDisabledColor,
              ),
              label: ''),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          _buildFirstCard(card),
          _buildStoryHighlights(asset),
          const SizedBox(height: 20),
          _buildRoomsTitle(),
          const SizedBox(height: 20),
          SizedBox(
            height: 275,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildRoomCard(card, asset),
                const SizedBox(width: 10),
                _buildRoomCard(card, asset),
                const SizedBox(width: 20),
                _buildRoomCard(card, asset),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRoomCard(Color card, String asset) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: card,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('NO RESERVATIONS 🏡',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        '👋 Do you put sauce on your Steak?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Image.asset('$asset/profile01.png'),
                    Image.asset('$asset/profile02.png'),
                    Image.asset('$asset/profile03.png'),
                    Image.asset('$asset/profile04.png'),
                    Image.asset('$asset/profile01.png'),
                    Image.asset('$asset/profile05.png'),
                    Image.asset('$asset/profile06.png'),
                    Image.asset('$asset/profile07.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('25 min . 6 Mar 2022',
                        style: TextStyle(color: Colors.grey)),
                    OutlinedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_add_outlined,
                        color: Colors.black,
                      ),
                      label: const Text('Save',
                          style: TextStyle(color: Colors.black)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStoryHighlights(String asset) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              Image.asset('${asset}status01.png'),
              const SizedBox(height: 5),
              const Text('Jame', style: TextStyle(fontSize: 12)),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            children: [
              Image.asset('${asset}status02.png'),
              const SizedBox(height: 5),
              const Text(
                'Dexter',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRoomsTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'ROOMS YOU MISSED',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('View All'),
          ),
        ],
      ),
    );
  }

  Widget _buildFirstCard(Color card) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 125,
        decoration: BoxDecoration(
          color: card,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 34.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('6:00 PM'),
                    SizedBox(width: 12),
                    Text('Let\'s talk desing'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Tomorrow \n 6:00 PM'),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'CLUBHOUSE  🏡',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('📣 Clubhouse Town Hall'),
                        Text(
                          '+1 in the next day',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(String asset) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Image.asset(asset + '/logo.png'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.message,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
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
      ],
    );
  }
}
