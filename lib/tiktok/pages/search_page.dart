import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildSearchAppBar(),
        SizedBox(
          height: 200,
          child: PageView(
            children: [
              Image.asset('assets/tiktok/home-cover1.png'),
              Image.asset('assets/tiktok/home-cover2.png'),
              Image.asset('assets/tiktok/home-cover3.png'),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ListTile(
          title: const Text('ChampionsLeague'),
          subtitle: const Text('Trending hashtag'),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
            child: const Center(
                child: Text(
              '#',
              style: TextStyle(
                fontSize: 24,
              ),
            )),
          ),
          trailing: Container(
            width: 50,
            color: Theme.of(context).dividerColor,
            height: 30,
            child: Center(child: Text('1.4B >')),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            padding: const EdgeInsets.only(left: 12),
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset(
                'assets/tiktok/home-tiktok04.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/tiktok/home-tiktok03.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/tiktok/home-tiktok02.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/tiktok/home-tiktok01.png',
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Divider(),
        ),
        const SizedBox(
          height: 16,
        ),
        ListTile(
          title: const Text('ChampionsLeague'),
          subtitle: const Text('Trending hashtag'),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
            child: const Center(
                child: Text(
              '#',
              style: TextStyle(
                fontSize: 24,
              ),
            )),
          ),
          trailing: Container(
            width: 50,
            color: Theme.of(context).dividerColor,
            height: 30,
            child: Center(child: Text('1.4B >')),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            padding: const EdgeInsets.only(left: 12),
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset(
                'assets/tiktok/home-tiktok04.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/tiktok/home-tiktok03.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/tiktok/home-tiktok02.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/tiktok/home-tiktok01.png',
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Divider(),
        ),
        const SizedBox(
          height: 16,
        ),
        ListTile(
          title: const Text('ChampionsLeague'),
          subtitle: const Text('Trending hashtag'),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
            child: const Center(
                child: Text(
              '#',
              style: TextStyle(
                fontSize: 24,
              ),
            )),
          ),
          trailing: Container(
            width: 50,
            color: Theme.of(context).dividerColor,
            height: 30,
            child: const Center(child: Text('1.4B >')),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            padding: const EdgeInsets.only(left: 12),
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset(
                'assets/tiktok/home-tiktok04.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/tiktok/home-tiktok03.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/tiktok/home-tiktok02.png',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/tiktok/home-tiktok01.png',
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Divider(),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget _buildSearchAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              color: Colors.grey.withOpacity(0.2),
              child: TextFormField(
                decoration: const InputDecoration(
                  fillColor: Colors.black,
                  focusColor: Colors.black,
                  icon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const Icon(
            Icons.qr_code,
          ),
        ],
      ),
    );
  }
}
