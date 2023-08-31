import 'package:flutter/material.dart';
import 'package:mobile_showcases/mario-bross/models/character.dart';
import 'package:mobile_showcases/mario-bross/screens/character_detail.dart';
import 'package:mobile_showcases/mario-bross/style/colors.dart';

class MarioHomeScreen extends StatefulWidget {
  const MarioHomeScreen({Key? key}) : super(key: key);

  @override
  State<MarioHomeScreen> createState() => _MarioHomeScreenState();
}

class _MarioHomeScreenState extends State<MarioHomeScreen>
    with SingleTickerProviderStateMixin {
  final List<Character> items = [
    Character(
        name: 'Mario', image: 'assets/mario-bross/mario.png', color: marioRed),
    Character(
        name: 'Luigi',
        image: 'assets/mario-bross/luigi.png',
        color: luigiGreen),
    Character(
        name: 'Peach', image: 'assets/mario-bross/peach.png', color: peachPink),
    Character(
        name: 'Bowswer',
        image: 'assets/mario-bross/bowser.png',
        color: bowserYellow),
  ];

  late AnimationController _animationController;
  late Animation<double> _animation;

  int index = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutBack,
    );

    _startAnimation();
  }

  Future<void> _startAnimation() async {
    for (int i = 0; i < items.length; i++) {
      _animationController.reset();
      await Future.delayed(const Duration(milliseconds: 300));
      if (mounted) {
        _animationController.forward();
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Wrap(
                  spacing: 10,
                  children: items
                      .map(
                        (e) => AnimatedBuilder(
                          animation: _animation,
                          builder: (context, child) {
                            index += 1;

                            final animationValue = _animation.value;
                            final cardOpacity =
                                animationValue >= (index + 1) / items.length
                                    ? 1.0
                                    : 0.0;
                            final cardScale =
                                Tween<double>(begin: 0.8, end: 1.0)
                                    .transform(animationValue);

                            return Transform.scale(
                              scale: cardScale,
                              child: child,
                            );
                          },
                          child: _buildCharacterCard(
                            context,
                            image: e.image,
                            name: e.name,
                            color: e.color,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
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
