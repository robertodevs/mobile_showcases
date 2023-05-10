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
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/mario-bross/logo.png',
            width: 200,
          ),
          // create a animated grid view

          SafeArea(
            child: ListView(
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCharacterCard(
                        context,
                        name: 'Mario',
                        image: 'assets/mario-bross/mario.png',
                        color: marioRed,
                      ),
                      _buildCharacterCard(
                        context,
                        name: 'Luigi',
                        image: 'assets/mario-bross/luigi.png',
                        color: luigiGreen,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCharacterCard(
                        context,
                        name: 'Peach',
                        image: 'assets/mario-bross/peach.png',
                        color: peachPink,
                      ),
                      _buildCharacterCard(
                        context,
                        name: 'Toad',
                        image: 'assets/mario-bross/bowser.png',
                        color: bowserYellow,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCharacterCard(
    BuildContext context, {
    required String name,
    required String image,
    required Color color,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetailScreen(
              name: name,
              image: image,
              color: color,
            ),
          ),
        );
      },
      child: SizedBox(
        height: 240,
        width: 175,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
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
                      const SizedBox(height: 30),
                      Image.asset(
                        'assets/mario-bross/skills-card.png',
                      ),
                      const Expanded(child: SizedBox()),
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
                          const SizedBox(height: 5),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Hero(
                tag: name,
                child: Image.asset(
                  image,
                ),
              ),
            ),
            Positioned(
              top: 45,
              right: 0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
