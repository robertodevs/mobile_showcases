import 'package:flutter/material.dart';
import 'package:mobile_showcases/tiktok/pages/notifications_page.dart';
import 'package:mobile_showcases/tiktok/pages/profile_page.dart';
import 'package:mobile_showcases/tiktok/pages/search_page.dart';
import 'package:mobile_showcases/tiktok/pages/tiktok_home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        onTap: (index) {
          controller.animateToPage(index,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_sharp,
              color: Colors.grey,
            ),
            label: 'Discover',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   label: 'Record',
          // ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inbox,
              color: Colors.grey,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: Colors.grey,
            ),
            label: 'Profile',
          )
        ],
      ),
      body: PageView(
        controller: controller,
        children: const [
          TiktokHomePage(),
          SearchPage(),
          NotificationsPage(),
          ProfilePage()
        ],
      ),
    );
  }
}
