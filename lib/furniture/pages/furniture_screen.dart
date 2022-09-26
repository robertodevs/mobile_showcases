// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FurnitureScreen extends StatelessWidget {
  const FurnitureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset('assets/furniture/background.png'),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildProductCard(),
                  const SizedBox(height: 20),
                  // button
                  _buidPurchaseButton()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buidPurchaseButton() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: (() {}),
              child: const Text('BUY NOW'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'LIVINGROOM FURNITURE',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Interior',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
                'This a set of different pieces to complement your livingroom perfectly. The colors are really amazing. '),
            const SizedBox(height: 8),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 12,
                      backgroundColor: Color(0xFFD7782C),
                    ),
                    const SizedBox(width: 8),
                    const CircleAvatar(
                      radius: 12,
                      backgroundColor: Color(0xFF3527D6),
                    ),
                    const SizedBox(width: 8),
                    const CircleAvatar(
                      radius: 12,
                      backgroundColor: Color(0xFF2CDA9B),
                    ),
                  ],
                ),
                const Spacer(),
                Stack(
                  children: [
                    Container(
                      height: 24,
                      width: 60,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            '-',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(1.toString(),
                              style: const TextStyle(color: Colors.grey)),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const Positioned(
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.black,
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        right: 0,
                        top: 0),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
