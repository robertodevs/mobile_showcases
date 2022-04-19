import 'package:flutter/material.dart';
import 'package:mobile_showcases/tiktok/style/tiktok_colors.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('  '),
              Text(
                'All Activity',
                style:
                    textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.inbox,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text('New'),
        ),
        ListTile(
          leading: Image.asset('assets/tiktok/noti-profile.png'),
          title: const Text('jmsdf34343 and frnsd44'),
          subtitle: Row(
            children: const [
              Text('iked your video'),
              SizedBox(
                width: 4,
              ),
              Text('Just now'),
            ],
          ),
          trailing: Image.asset('assets/tiktok/noti-video1.png'),
        ),
        ListTile(
          leading: Image.asset('assets/tiktok/noti-profile.png'),
          title: const Text('jmsdf34343 and frnsd44'),
          subtitle: Row(
            children: const [
              Text('iked your video'),
              SizedBox(
                width: 4,
              ),
              Text('Just now'),
            ],
          ),
          trailing: Container(
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: tiktokRedColor,
            ),
            child: Center(
              child: Text(
                'Follow back',
                style: textTheme.button!.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
        ListTile(
          leading: Container(
            width: 60,
            height: 60,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    'assets/tiktok/noti-multi-profile1.png',
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset('assets/tiktok/noti-profile2.png'),
                ),
              ],
            ),
          ),
          title: const Text('jmsdf34343 and frnsd44'),
          subtitle: Row(
            children: const [
              Text('iked your video'),
              SizedBox(
                width: 4,
              ),
              Text('Just now'),
            ],
          ),
          trailing: Image.asset('assets/tiktok/noti-video1.png'),
        ),
        const SizedBox(
          height: 24,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text('Today'),
        ),
        ListTile(
          leading: Image.asset('assets/tiktok/noti-profile.png'),
          title: const Text('jmsdf34343 and frnsd44'),
          subtitle: Row(
            children: const [
              Text('iked your video'),
              SizedBox(
                width: 4,
              ),
              Text('Just now'),
            ],
          ),
          trailing: Image.asset('assets/tiktok/noti-video1.png'),
        ),
        ListTile(
          leading: Image.asset('assets/tiktok/noti-profile.png'),
          title: const Text('jmsdf34343 and frnsd44'),
          subtitle: Row(
            children: const [
              Text('iked your video'),
              SizedBox(
                width: 4,
              ),
              Text('Just now'),
            ],
          ),
          trailing: Container(
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: tiktokRedColor,
            ),
            child: Center(
              child: Text(
                'Follow back',
                style: textTheme.button!.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
        ListTile(
          leading: Container(
            width: 60,
            height: 60,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    'assets/tiktok/noti-multi-profile1.png',
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset('assets/tiktok/noti-profile2.png'),
                ),
              ],
            ),
          ),
          title: const Text('jmsdf34343 and frnsd44'),
          subtitle: Row(
            children: const [
              Text('iked your video'),
              SizedBox(
                width: 4,
              ),
              Text('Just now'),
            ],
          ),
          trailing: Image.asset('assets/tiktok/noti-video1.png'),
        ),
        const SizedBox(
          height: 24,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text('New'),
        ),
        ListTile(
          leading: Image.asset('assets/tiktok/noti-profile.png'),
          title: const Text('jmsdf34343 and frnsd44'),
          subtitle: Row(
            children: const [
              Text('iked your video'),
              SizedBox(
                width: 4,
              ),
              Text('Just now'),
            ],
          ),
          trailing: Image.asset('assets/tiktok/noti-video1.png'),
        ),
        ListTile(
          leading: Image.asset('assets/tiktok/noti-profile.png'),
          title: const Text('jmsdf34343 and frnsd44'),
          subtitle: Row(
            children: const [
              Text('iked your video'),
              SizedBox(
                width: 4,
              ),
              Text('Just now'),
            ],
          ),
          trailing: Container(
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: tiktokRedColor,
            ),
            child: Center(
              child: Text(
                'Follow back',
                style: textTheme.button!.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
        ListTile(
          leading: Container(
            width: 60,
            height: 60,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    'assets/tiktok/noti-multi-profile1.png',
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset('assets/tiktok/noti-profile2.png'),
                ),
              ],
            ),
          ),
          title: const Text('jmsdf34343 and frnsd44'),
          subtitle: Row(
            children: const [
              Text('iked your video'),
              SizedBox(
                width: 4,
              ),
              Text('Just now'),
            ],
          ),
          trailing: Image.asset('assets/tiktok/noti-video1.png'),
        ),
      ],
    );
  }
}
