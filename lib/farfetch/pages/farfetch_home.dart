import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class FarfetchHome extends StatelessWidget {
  const FarfetchHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildBottomBarActions(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 400,
                child: PageView(
                  children: [
                    Center(
                      child: Image.asset('assets/farfetch/shoe01.png'),
                    ),
                    Center(
                      child: Image.asset('assets/farfetch/shoe02.png'),
                    ),
                  ],
                ),
              ),
              DotsIndicator(
                dotsCount: 3,
                position: 0,
              ),
              const SizedBox(
                height: 20,
              ),
              _buildProductTitle(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Select your size',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          _buildRightActions()
        ],
      ),
    );
  }

  Widget _buildBottomBarActions() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  child: Center(
                    child: Image.asset(
                      'assets/farfetch/apple_pay.png',
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 200,
                  child: const Center(
                    child: Text(
                      'Add to bag',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Widget _buildRightActions() {
    return Positioned(
      right: 16,
      top: 60,
      child: Column(
        children: [
          Image.asset(
            'assets/farfetch/shopping.png',
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/farfetch/star.png',
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/farfetch/share.png',
          ),
        ],
      ),
    );
  }

  Widget _buildProductTitle() {
    return Column(
      children: const [
        Text(
          'Gucci',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'GUCCI BASKET MLTI SNKR',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '\$900',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
