import 'package:flutter/material.dart';
import 'package:mobile_showcases/landing_page/style/landing_colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const menuStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50, top: 10, bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                // NAVIGATE TO SCHEDULE A CALL
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                textStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                primary: Colors.white,
                minimumSize: const Size(159, 100),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: const Text('LOGIN'),
            ),
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'HOME',
              style: menuStyle,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'SERVICES',
              style: menuStyle,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'ABOUT US',
              style: menuStyle,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'CONTACT US',
              style: menuStyle,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .9,
              ),
              child: Row(
                children: [
                  // LEFT SIDE
                  Expanded(
                    flex: 3,
                    child: buildLeftSide(),
                  ),
                  Expanded(
                    flex: 5,
                    child: Stack(
                      children: [
                        const SizedBox(
                          height: 1000,
                        ),
                        Positioned(
                          top: 50,
                          child: Container(
                            height: 1000,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: [landingGradient3, landingGradient4],
                              ),
                            ),
                          ),
                        ),
                        buildRightLayout()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildRightLayout() {
    return Positioned(
      left: 75,
      child: Container(
        width: 700,
        height: 1000,
        child: Stack(children: [
          Positioned(
            right: 100,
            top: 200,
            child: Image.asset(
              'assets/landing_page/profile.png',
            ),
          ),
          Positioned(
            top: 110,
            left: 80,
            child: Image.asset(
              'assets/landing_page/model1.png',
            ),
          ),
          Positioned(
            bottom: 180,
            right: 100,
            child: Image.asset(
              'assets/landing_page/model2.png',
            ),
          ),
          Positioned(
            bottom: 250,
            left: 100,
            child: Image.asset(
              'assets/landing_page/figures.png',
              width: 100,
              fit: BoxFit.contain,
            ),
          ),
          buildMainCard(),
        ]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              landingGradient2,
              landingGradient1,
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMainCard() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Made by Creatives',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '2.2k',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Image.asset('assets/landing_page/users.png')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLeftSide() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 100,
        ),
        buildMainText(),
        const SizedBox(
          height: 44,
        ),
        const Text(
          'We are here to convert your ideas into reality',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 44,
        ),
        buildScheduleButton(),
        const SizedBox(
          height: 44,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildServiceType('WEBSITES'),
            const SizedBox(
              height: 12,
            ),
            buildServiceType('UI DESIGN'),
            const SizedBox(
              height: 12,
            ),
            buildServiceType('VIDEO PRODUCTION'),
          ],
        )
      ],
    );
  }

  Widget buildServiceType(String serviceName) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 15,
          backgroundColor: landingSecondaryGreen,
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          serviceName,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget buildScheduleButton() {
    return ElevatedButton(
      onPressed: () {
        // NAVIGATE TO SCHEDULE A CALL
      },
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        primary: landingGreen,
        minimumSize: const Size(300, 80),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: const Text('Schedule a call'),
    );
  }

  Widget buildMainText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Awesome &',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('Creative',
            style: TextStyle(
              fontSize: 50,
              color: landingGreen,
              fontWeight: FontWeight.bold,
            )),
        Text('Digital Agency',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w300,
            )),
      ],
    );
  }
}
