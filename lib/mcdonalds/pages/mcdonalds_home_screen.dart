import 'package:flutter/material.dart';

class McDonaldsHomeScreen extends StatelessWidget {
  const McDonaldsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        onPressed: (() {}),
        label: const Text('                VIEW CART             '),
      ),
      body: CustomScrollView(slivers: [
        _buildAppBar(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'McDonalds',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '4.4 6,700+ ratings . 2.8 mi . \$ 9',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Text(
                      'Open now',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      ' Closes at 10:30 P.M',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        _buildMetaData(),
        _buildChipsList(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child:
                Image.asset('assets/mcdonalds/banner.png', fit: BoxFit.cover),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Featured Items',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        _buildProductList(
          title: 'Burgers',
          subtitle:
              'Pan Muffin con Omelette con vegetales, queso cheddar amarillo y tocino',
          image: 'assets/mcdonalds/product1.png',
          price: '5.99',
        ),
      ]),
    );
  }

  Widget _buildMetaData() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 74,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '\$ 1.5',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Delivery fee',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: VerticalDivider(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '25 min',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Delivery time'),
              ],
            )
          ]),
        ),
      ),
    );
  }

  Widget _buildChipsList() {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: const [
          Chip(
            label: Text('Burgers'),
          ),
          SizedBox(width: 4),
          Chip(
            label: Text('Fast food'),
          ),
          SizedBox(width: 4),
          Chip(
            label: Text('Beverages'),
          ),
        ],
      ),
    ));
  }

  Widget _buildProductList({
    required String title,
    required String subtitle,
    required String price,
    required String image,
  }) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(subtitle),
                    const SizedBox(height: 4),
                    Text(
                      '\$ $price',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(image),
            ]),
          );
        },
        childCount: 20,
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      elevation: 0.5,
      backgroundColor: Colors.white,
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text(''),
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/mcdonalds/cover.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Image.asset('assets/mcdonalds/logo.png'),
            ),
          ],
        ),
      ),
      leading: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.white,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 10),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
