import 'package:flutter/material.dart';
import 'package:mobile_showcases/instagram/style/instagram_colors.dart';

class InstagramHomePage extends StatelessWidget {
  const InstagramHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset('assets/instagram/logo.png'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/instagram/new.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/instagram/heart.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/instagram/dm.png'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: instagramDisabledText,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: instagramDisabledText,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_camera_back,
                color: instagramDisabledText,
              ),
              label: 'Reels'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: instagramDisabledText,
              ),
              label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: instagramDisabledText,
              ),
              label: 'Profile')
        ],
      ),
      body: ListView(
        children: [
          _buildStoriesList(context),
          const SizedBox(
            height: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/instagram/avatar-post.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'robertodevs',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Image.asset('assets/instagram/post1.png'),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/instagram/heart.png'),
                      Image.asset('assets/instagram/comment.png'),
                      Image.asset('assets/instagram/share.png'),
                    ],
                  ),
                  Image.asset('assets/instagram/save.png'),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              // meta header people who comment
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Image.asset('assets/instagram/small-comment.png'),
                    const SizedBox(
                      width: 4,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: ' Liked by',
                        style: TextStyle(fontWeight: FontWeight.w300),
                        children: [
                          TextSpan(
                              text: ' alfonso2323',
                              style: TextStyle(fontWeight: FontWeight.w300)),
                          TextSpan(
                            text: ' and',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: instagramDisabledText),
                          ),
                          TextSpan(
                            text: ' 877 others',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: instagramDisabledText),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                      text: 'scotttravis2001',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text:
                                ' The most beautiful about life is enjor what you do and be grateful',
                            style: TextStyle(fontWeight: FontWeight.w300)),
                        TextSpan(
                          text: ' ... more',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: instagramDisabledText),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/instagram/small-personal.png'),
                        const SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Add a comment',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text('❤'),
                        SizedBox(
                          width: 8,
                        ),
                        Text('🙌🏼')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/instagram/avatar-post.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'robertodevs',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Image.asset('assets/instagram/post2.png'),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/instagram/heart.png'),
                      Image.asset('assets/instagram/comment.png'),
                      Image.asset('assets/instagram/share.png'),
                    ],
                  ),
                  Image.asset('assets/instagram/save.png'),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              // meta header people who comment
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Image.asset('assets/instagram/small-comment.png'),
                    const SizedBox(
                      width: 4,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: ' Liked by',
                        style: TextStyle(fontWeight: FontWeight.w300),
                        children: [
                          TextSpan(
                              text: ' alfonso2323',
                              style: TextStyle(fontWeight: FontWeight.w300)),
                          TextSpan(
                            text: ' and',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: instagramDisabledText),
                          ),
                          TextSpan(
                            text: ' 877 others',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: instagramDisabledText),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                      text: 'scotttravis2001',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text:
                                ' The most beautiful about life is enjor what you do and be grateful',
                            style: TextStyle(fontWeight: FontWeight.w300)),
                        TextSpan(
                          text: ' ... more',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: instagramDisabledText),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/instagram/small-personal.png'),
                        const SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Add a comment',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text('❤'),
                        SizedBox(
                          width: 8,
                        ),
                        Text('🙌🏼')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/instagram/avatar-post.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'robertodevs',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Image.asset('assets/instagram/post3.png'),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/instagram/heart.png'),
                      Image.asset('assets/instagram/comment.png'),
                      Image.asset('assets/instagram/share.png'),
                    ],
                  ),
                  Image.asset('assets/instagram/save.png'),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              // meta header people who comment
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Image.asset('assets/instagram/small-comment.png'),
                    const SizedBox(
                      width: 4,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: ' Liked by',
                        style: TextStyle(fontWeight: FontWeight.w300),
                        children: [
                          TextSpan(
                              text: ' alfonso2323',
                              style: TextStyle(fontWeight: FontWeight.w300)),
                          TextSpan(
                            text: ' and',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: instagramDisabledText),
                          ),
                          TextSpan(
                            text: ' 877 others',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: instagramDisabledText),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                      text: 'scotttravis2001',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text:
                                ' The most beautiful about life is enjor what you do and be grateful',
                            style: TextStyle(fontWeight: FontWeight.w300)),
                        TextSpan(
                          text: ' ... more',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: instagramDisabledText),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/instagram/small-personal.png'),
                        const SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Add a comment',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text('❤'),
                        SizedBox(
                          width: 8,
                        ),
                        Text('🙌🏼')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }

  Widget _buildStoriesList(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/instagram/personal-avatar.png'),
                  const Positioned(
                      bottom: 0,
                      right: 10,
                      child: CircleAvatar(
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          size: 12,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'My Story',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: instagramDisabledText),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Image.asset('assets/instagram/story1.png'),
              const SizedBox(
                height: 8,
              ),
              Text(
                'roberto12323',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: instagramDisabledText),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Image.asset('assets/instagram/story2.png'),
              const SizedBox(
                height: 8,
              ),
              Text(
                'juarez.roberto88',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: instagramDisabledText),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Image.asset('assets/instagram/story3.png'),
              const SizedBox(
                height: 8,
              ),
              Text(
                'rob3434',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: instagramDisabledText),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Image.asset('assets/instagram/story4.png'),
              const SizedBox(
                height: 8,
              ),
              Text(
                'jar3434',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: instagramDisabledText),
              )
            ],
          ),
        ],
      ),
    );
  }
}
