import 'package:flutter/material.dart';
import 'package:mobile_showcases/nike/style/nike_colors.dart';
import 'package:mobile_showcases/utils.dart';

class AmazonHomeScreen extends StatelessWidget {
  const AmazonHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: nikeDisabledColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: nikeDisabledColor,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: nikeDisabledColor,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_two,
                color: nikeDisabledColor,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                color: nikeDisabledColor,
              ),
              label: '')
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFFB3E5D0),
              Color(0xFF97D7E0),
            ])),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    hintText: 'Search Amazon',
                    suffixIcon: const Icon(
                      Icons.mic,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(.3),
                      ),
                    ),
                  ),
                ),
              ),
              _buildHeader(),
              _buildSignInCard(),
              SizedBox(
                height: screenAwareHeight(context, 8),
              ),
              _buildListTiles(),
              const SizedBox(
                height: 8,
              ),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Back to School'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        screenAwareHeight(context, 8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/amazon/school01.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                width: screenAwareWidth(context, 2),
                              ),
                              Expanded(
                                child: Image.asset(
                                  'assets/amazon/school02.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/amazon/school03.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                width: screenAwareWidth(context, 2),
                              ),
                              Expanded(
                                child: Image.asset(
                                  'assets/amazon/school04.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildListTiles() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text('Popular products in Wireless \ninternationally'),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset('assets/amazon/shop01.png'),
              title: const Text('Nintendo Game Mario Striker'),
              subtitle: const Text('\$49.99'),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset('assets/amazon/shop02.png'),
              title: const Text('Nintendo Game Mario Striker'),
              subtitle: const Text('\$49.99'),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset('assets/amazon/shop03.png'),
              title: const Text('Nintendo Game Mario Striker'),
              subtitle: const Text('\$49.99'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignInCard() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Sign in for the best experience'),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFF9D94C), elevation: 0.5),
                  onPressed: () {},
                  child: const Text(
                    'Sign in securely',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text('Create an account'),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF459ADE),
            Color(0xFF5AACE5),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 40, bottom: 50),
            child: Text(
              'We ship over \n45 million products \naround the world',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4, right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    width: 120,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Shop Laptops & Tablets'),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/amazon/prod03.png',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4, right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    width: 120,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Shop Laptops & Tablets'),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/amazon/prod02.png',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 4,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    width: 120,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Shop Laptops & Tablets'),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/amazon/prod01.png',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
