import 'package:flutter/material.dart';
import 'package:mobile_showcases/tiktok/style/tiktok_colors.dart';

class TiktokHomePage extends StatelessWidget {
  const TiktokHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Following',
              style: textTheme.subtitle1!.copyWith(color: Colors.white),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              'For you',
              style: textTheme.subtitle1!.copyWith(color: Colors.white),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.live_tv),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/tiktok/preview1.png',
            fit: BoxFit.cover,
          ),
          _buildMetaDataVideo(textTheme),
          _buildRightVideoMetaData(textTheme)
        ],
      ),
    );
  }

  Widget _buildRightVideoMetaData(TextTheme textTheme) {
    return Positioned(
        right: 12,
        bottom: 20,
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Image.asset('assets/tiktok/preview-profile.png'),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                const Positioned(
                  bottom: 0,
                  left: 15,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: tiktokRedColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              children: [
                const Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '22.7 k',
                  style: textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              children: [
                const Icon(
                  Icons.comment,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '22.7 k',
                  style: textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            Column(
              children: [
                const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '22.7 k',
                  style: textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Image.asset('assets/tiktok/song.png'),
                const SizedBox(
                  height: 2,
                ),
              ],
            )
          ],
        ));
  }

  Widget _buildMetaDataVideo(TextTheme textTheme) {
    return Positioned(
      bottom: 20,
      left: 12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '@flutter_templates',
            style: textTheme.subtitle2!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 300,
            child: Text(
              'Tiktok clone with Flutter #foryou #trending #viral #viralvideos',
              style: textTheme.bodyMedium!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              const Icon(
                Icons.music_note,
                color: Colors.white,
              ),
              Text(
                'RA - @Rakhim',
                style: textTheme.bodySmall!.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
