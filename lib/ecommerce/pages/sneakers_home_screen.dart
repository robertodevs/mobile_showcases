import 'package:flutter/material.dart';

class SneakersHomeScreen extends StatelessWidget {
  const SneakersHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEAE7),
      body: Stack(
        children: [
          _buildBody(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFFFEEAE7),
                border: _sharedBorder(),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 0,
                    offset: Offset(0, -4),
                  )
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.home),
                      Text(
                        'HOME',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.star),
                      Text(
                        'FAVORITES',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.person),
                      Text(
                        'PROFILE',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ListView _buildBody() {
    return ListView(
      children: [
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/ecommerce/avatar.png'),
          ),
          title: Text(
            'Roberto Juarez',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'Software Engineer',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Search Bar
        _buildSearchBar(),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Brands',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        // List view horizontally
        _buildBrands(),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Nike/Jordan Collection',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        // Grid view with all the shoes in cards
        _buildShoesGrid(),
      ],
    );
  }

  Widget _buildShoesGrid() {
    final List productNames = [
      'Jordan 1 Retro High OG',
      'Nike Dunk Low Stadium Green',
      'Nike Dunk Low Veneer',
      'Nike Dunk Low UNLV',
    ];
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
      ),
      itemBuilder: (context, index) {
        return _buildShoeCard(
          'assets/ecommerce/shoe0${index + 1}.png',
          productNames[index],
          '\$${(index + 1) * 100}',
        );
      },
    );
  }

  Widget _buildShoeCard(String image, String name, String price) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: _sharedBorder(),
              boxShadow: _sharedShadow,
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            4.5.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(
                            Icons.star_outline,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset(image),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBrands() {
    return SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          _buildBrand('assets/ecommerce/nike.png', const Color(0xFFA182EC)),
          _buildBrand('assets/ecommerce/adidas.png', const Color(0xFF79E080)),
          _buildBrand('assets/ecommerce/nb.png', const Color(0xFF72F5E6)),
          _buildBrand('assets/ecommerce/puma.png', const Color(0xFFF79180)),
        ],
      ),
    );
  }

  Widget _buildBrand(String image, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
          border: _sharedBorder(),
          boxShadow: _sharedShadow,
        ),
        child: Image.asset(image),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: _sharedBorder(),
          boxShadow: _sharedShadow,
        ),
        child: const TextField(
          decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none),
        ),
      ),
    );
  }

  Border _sharedBorder() {
    return Border.all(
      color: Colors.black,
      width: 3,
    );
  }

  List<BoxShadow> get _sharedShadow {
    return const [
      BoxShadow(
        color: Colors.black,
        blurRadius: 0,
        offset: Offset(4, 5),
      )
    ];
  }
}
