import 'package:flutter/material.dart';
import 'package:mobile_showcases/mario-bross/screens/character_detail.dart';
import 'package:mobile_showcases/mario-bross/style/colors.dart';

class MarioHomeScreen extends StatelessWidget {
  const MarioHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/mario-bross/logo.png',
            width: 200,
          ),
          ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCharacterCard(context,
                        image: 'assets/mario-bross/mario.png',
                        name: 'Mario Bross',
                        color: marioRed),
                    _buildCharacterCard(context,
                        image: 'assets/mario-bross/luigi.png',
                        name: 'Luigi Bross',
                        color: luigiGreen),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCharacterCard(context,
                        image: 'assets/mario-bross/peach.png',
                        name: 'Peach',
                        color: peachPink),
                    _buildCharacterCard(context,
                        image: 'assets/mario-bross/bowser.png',
                        name: 'Bowswer',
                        color: bowserYellow),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCharacterCard(BuildContext context,
      {required String image, required String name, required Color color}) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CharacterDetailScreen(
            name: name,
            image: image,
            color: color,
          ),
        ),
      ),
      child: SizedBox(
        height: 240,
        width: 175,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                height: 193,
                width: 175,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset('assets/mario-bross/skills-card.png'),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Hero(tag: name, child: Image.asset(image)),
            ),
            Positioned(
              right: 0,
              top: 45,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
