import 'package:flutter/material.dart';
import 'package:mobile_showcases/ecommerce/style/colors.dart';

class EcommerceHomeScreen extends StatelessWidget {
  const EcommerceHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List productNames = [
      'Jordan 1 Retro High OG',
      'Nike Dunk Low Stadium Green',
      'Nike Dunk Low Veneer',
      'Nike Dunk Low UNLV',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              color: kSkyBlue,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  _buildPurpleDecorator(),
                  _buildYellowDecorator(),
                  _buildHeader(),
                  _buildMainProduct()
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _buildTitle(context),

            // Grid of products
            _buildProducts(productNames),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
          Text('Recent Launches', style: Theme.of(context).textTheme.headline6),
    );
  }

  Widget _buildProducts(List<dynamic> productNames) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        return _buildProductCard(
          productImage: 'assets/ecommerce/shoe0${index + 1}.png',
          productName: productNames[index],
        );
      },
    );
  }

  Widget _buildMainProduct() {
    return Stack(
      children: [
        Positioned(
          right: -15,
          bottom: 45,
          child: Container(
            width: 200,
            height: 150,
            decoration: const BoxDecoration(
              color: kRed,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 40,
          child: SizedBox(
            width: 300,
            child: Transform.rotate(
              angle: -0.5,
              child: Image.asset(
                'assets/ecommerce/shoe06.png',
              ),
            ),
          ),
        )
      ],
    );
  }

  Positioned _buildYellowDecorator() {
    return Positioned(
      right: -100,
      top: -100,
      child: Container(
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
          color: kPurple,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Positioned _buildPurpleDecorator() {
    return Positioned(
      left: -100,
      bottom: -100,
      child: Container(
        height: 300,
        width: 400,
        decoration: const BoxDecoration(
          color: kYellow,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        _buildLeftHeader(),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }

  Widget _buildLeftHeader() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Jordan 1 Retro High OG',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // shoe description
            const Text(
              'The Air Jordan 1 Retro High OG “University Blue” is a Spring 2021 release that continues the legacy of the legendary silhouette. The “University Blue” colorway is a new addition to the Air Jordan 1 line, but the shoe’s color blocking is reminiscent of the extremely limited “UNC Patent Leather” design from 2019. Here, a white leather base covers the mid-panel, toe cap, and ankle collar. Contrasting University Blue leather overlays can be found on the forefoot, eyelets, and heel. Black leather Swoosh branding dots the mid-panel and a black “Wings” logo is located on the collar. A white midsole and University Blue outsole finish off the look of Michael Jordan’s first signature shoe.',
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            // Add to Cart button
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add to Cart'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard({
    required String productImage,
    required String productName,
  }) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            productImage,
          ),
          Center(
            child: Text(
              productName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            '\$ 170',
            style: TextStyle(
              fontSize: 16,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  'Add to Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
