import 'package:flutter/material.dart';
import 'package:mobile_showcases/opensea/style/opensea_colors.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/opensea/appbar-logo.png'),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 16,
        ),
        children: [
          const SizedBox(
            height: 12,
          ),
          _buildCategories(),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Notable Drops',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 24,
          ),
          _buildDrops(),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Trending collections',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/opensea/trending1.png',
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 80,
                          width: 170,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        bottom: 50,
                        child:
                            Image.asset('assets/opensea/trending-avatar.png'),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'Keepers of the Inn',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Keepers of the Inn',
                                style: TextStyle(
                                    fontSize: 14, color: openSeaPrimaryColor),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Card(
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/opensea/trending1.png',
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 80,
                          width: 170,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        bottom: 50,
                        child:
                            Image.asset('assets/opensea/trending-avatar.png'),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'Keepers of the Inn',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Keepers of the Inn',
                                style: TextStyle(
                                    fontSize: 14, color: openSeaPrimaryColor),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Recent rockets',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

  Widget _buildDrops() {
    return SizedBox(
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Image.asset('assets/opensea/drop1.png'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Keepers of the Inn',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Image.asset('assets/opensea/drop2.png'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Store',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Image.asset('assets/opensea/drop3.png'),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Keepers of the Inn',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Stack(
            children: [
              Card(
                child: Image.asset(
                  'assets/opensea/category1.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                bottom: 40,
                left: 16,
                child: Text(
                  'Art',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Stack(
            children: [
              Card(
                child: Image.asset(
                  'assets/opensea/category2.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                bottom: 40,
                left: 16,
                child: Text(
                  'Music',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Stack(
            children: [
              Card(
                child: Image.asset(
                  'assets/opensea/category3.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                bottom: 40,
                left: 16,
                child: Text(
                  'Art',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
