import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.add),
              Text(
                'Roberto Juarez',
                style:
                    textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 50,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/tiktok/profile.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text('@flutter_timelapses'),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      '0',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Following'),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: const [
                    Text(
                      '123232',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Followers'),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: const [
                    Text(
                      '10232',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Likes'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Theme.of(context).dividerColor,
                  )),
                  child: const Center(
                    child: Text('Edit profile'),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Theme.of(context).dividerColor,
                  )),
                  child: const Center(
                    child: Icon(Icons.discord),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Theme.of(context).dividerColor,
                  )),
                  child: const Center(
                    child: Icon(Icons.tag),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            // MetaData
            const Text('Software Engineer'),
            const Text('Made in Guatemala'),
            const Text('Husband'),
            const Text('Dad of one'),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 500,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                children: [
                  Image.asset(
                    'assets/tiktok/timelapse01.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/tiktok/timelapse01.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/tiktok/timelapse01.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/tiktok/timelapse01.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/tiktok/timelapse01.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/tiktok/timelapse01.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/tiktok/timelapse01.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/tiktok/timelapse01.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/tiktok/timelapse01.png',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
