import 'package:flutter/material.dart';

class StarBucksScreen extends StatelessWidget {
  const StarBucksScreen({Key? key}) : super(key: key);

  final primaryColor = const Color(0xFF48A878);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Image.asset('assets/starbucks/bg.png'),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Image.asset('assets/starbucks/coffee.png'),
              _buildProductTitle(context),
              const SizedBox(height: 12),
              const Text(
                'Size Options',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _buildSizeOption('Tall', '12 oz', true),
                  _buildSizeOption('Grande', '16 oz', false),
                  _buildSizeOption('Venti', '20 oz', false),
                  _buildSizeOption('Custom', '__ oz', false),
                ],
              ),
              const SizedBox(height: 12),
              _buildBottomControls()
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: primaryColor,
              child: const Text('-'),
            ),
            const SizedBox(width: 8),
            const Text(
              '1',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            CircleAvatar(
              radius: 14,
              backgroundColor: primaryColor,
              child: const Text('+'),
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: primaryColor,
            shape: const StadiumBorder(),
          ),
          onPressed: () {},
          child: const Text('Add to Order'),
        ),
      ],
    );
  }

  Widget _buildSizeOption(String title, String subtitle, bool isSelected) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 75,
            height: 60,
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isSelected ? primaryColor : primaryColor.withOpacity(.3),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.coffee,
              color: isSelected ? Colors.white : primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Caramel \nCappucinno',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('\$5.99',
                style: TextStyle(
                  fontSize: 24,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                )),
            const Text(
              'Best Sales',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }

  AppBar _buildAppBar() {
    const secondaryColor = Color(0xFFE0CCA1);
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text('Details', style: TextStyle(color: Colors.black)),
      elevation: 0,
      leading: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      actions: const [
        Icon(
          Icons.favorite_border,
          color: secondaryColor,
        ),
        SizedBox(width: 16),
        Icon(
          Icons.shopping_cart_outlined,
          color: secondaryColor,
        ),
        SizedBox(width: 16),
      ],
    );
  }
}
