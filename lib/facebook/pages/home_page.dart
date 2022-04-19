import 'package:flutter/material.dart';
import 'package:mobile_showcases/facebook/style/facebook_colors.dart';

class FacebookHomePage extends StatefulWidget {
  const FacebookHomePage({Key? key}) : super(key: key);

  @override
  _FacebookHomePageState createState() => _FacebookHomePageState();
}

class _FacebookHomePageState extends State<FacebookHomePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: cardColor,
        elevation: 0,
        title: Image.asset('assets/facebook/facebook.png'),
        centerTitle: false,
        actions: [
          IconButton(
            color: reelColor,
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: reelColor,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            color: reelColor,
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: reelColor,
              child: Icon(
                Icons.message,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: cardColor,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            child: Image.asset('assets/facebook/avatar.png'),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text(
                            '¿Qué estás pensando?',
                            style: TextStyle(color: customWhite),
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/facebook/image-icon.png',
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          _buildChipsList(),
          const SizedBox(
            height: 8,
          ),
          _buildStoriesSection(),
          const SizedBox(
            height: 8,
          ),
          Container(
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset('assets/facebook/avatar.png'),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Carlos Juarez',
                                style: TextStyle(
                                  color: customWhite,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '7 min',
                                style: TextStyle(
                                  color: customWhite,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.more_horiz,
                            color: customWhite,
                          ),
                          Icon(
                            Icons.close,
                            color: customWhite,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Este año ha sido finalmente un gran aprendizaje, estamos todos agradecids por esto. Pero la perservancia es la que da paso a lo que vale verdaderamente. Gracias 2022. ',
                    style: TextStyle(color: customWhite),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ..._footer(false),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  child:
                                      Image.asset('assets/facebook/avatar.png'),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Carlos Juarez',
                                      style: TextStyle(
                                        color: customWhite,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '7 min',
                                      style: TextStyle(
                                        color: customWhite,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.more_horiz,
                                  color: customWhite,
                                ),
                                Icon(
                                  Icons.close,
                                  color: customWhite,
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Este año ha sido finalmente un gran aprendizaje, estamos todos agradecids por esto. Pero la perservancia es la que da paso a lo que vale verdaderamente. Gracias 2022. ',
                          style: TextStyle(color: customWhite),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Image.asset('assets/facebook/post1.png'),
                  const SizedBox(
                    height: 8,
                  ),
                  ..._footer(true),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _footer(bool hasPadding) {
    return [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: hasPadding ? 16 : 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Positioned(
                        left: 0,
                        child: Image.asset('assets/facebook/like.png')),
                    Positioned(
                        left: 15,
                        child: Image.asset('assets/facebook/love.png')),
                    Image.asset(
                      'assets/facebook/like.png',
                    ),
                  ],
                ),
                const Text(
                  '568',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            const Text(
              '589 comentarios',
              style: TextStyle(
                color: textColor,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 4,
      ),
      Divider(
        color: textColor.withOpacity(0.5),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/facebook/like-icon.png'),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Me gusta',
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/facebook/comment-icon.png'),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Comentar',
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/facebook/share-icon.png'),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Compartir',
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ],
      )
    ];
  }

  Widget _buildStoriesSection() {
    return Container(
      color: cardColor,
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TabBar(
                controller: TabController(length: 3, vsync: this),
                tabs: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Historias',
                      style: TextStyle(color: mainColor),
                    ),
                  ),
                  Text('Reels'),
                  Text('Salas'),
                ]),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 210,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Container(
                        color: scaffoldColor,
                        child: Image.asset('assets/facebook/story1.png'),
                      ),
                      const Positioned(
                        left: 30,
                        top: 105,
                        child: CircleAvatar(
                          child: Icon(Icons.add),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 20,
                        child: SizedBox(
                          width: 50,
                          child: Text(
                            'Roberto Juarez',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: customWhite,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/facebook/story2.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/facebook/avatar2.png',
                            width: 100,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 12,
                        child: Text(
                          'Carlos Juarez',
                          style: TextStyle(
                            color: customWhite,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/facebook/story3.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/facebook/avatar3.png',
                            width: 100,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 12,
                        child: Text(
                          'Roberto Juarez',
                          style: TextStyle(
                            color: customWhite,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/facebook/story4.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/facebook/avatar3.png',
                            width: 100,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 12,
                        child: Text(
                          'Roberto Juarez',
                          style: TextStyle(
                            color: customWhite,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChipsList() {
    return Container(
      color: cardColor,
      child: Container(
        height: 60,
        color: const Color(0xFF3E4041),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Chip(
                backgroundColor: const Color(0xFF3E4041),
                label: Row(
                  children: [
                    Image.asset(
                      'assets/facebook/reel-icon.png',
                      width: 30,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Reel',
                      style: TextStyle(color: textColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Chip(
                backgroundColor: const Color(0xFF3E4041),
                label: Row(
                  children: [
                    Image.asset(
                      'assets/facebook/video-icon.png',
                      width: 30,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Group',
                      style: TextStyle(color: textColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Chip(
                backgroundColor: const Color(0xFF3E4041),
                label: Row(
                  children: [
                    Image.asset(
                      'assets/facebook/grupo-icon.png',
                      width: 30,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Sala',
                      style: TextStyle(color: textColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Chip(
                backgroundColor: const Color(0xFF3E4041),
                label: Row(
                  children: [
                    Image.asset(
                      'assets/facebook/live-icon.png',
                      width: 30,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Live',
                      style: TextStyle(color: textColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
