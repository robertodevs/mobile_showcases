import 'package:flutter/material.dart';
import 'package:mobile_showcases/nike/components/product_card.dart';
import 'package:mobile_showcases/nike/style/nike_colors.dart';

class NikeHome extends StatefulWidget {
  const NikeHome({Key? key}) : super(key: key);

  @override
  _NikeHomeState createState() => _NikeHomeState();
}

class _NikeHomeState extends State<NikeHome> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_sharp,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
        title: const Text(
          'Best Seller',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
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
      body: ListView(
        children: [
          TabBar(
            indicatorColor: Colors.black,
            labelColor: nikeDisabledColor,
            controller: TabController(length: 4, vsync: this),
            tabs: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'All',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Text('Shoes'),
              Text('Clothing'),
              Text('Festival Fits'),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                ProductCard(
                  productTitle: 'Nike Air Force 1 \'07',
                  price: '\$90',
                  category: 'Women\'s Shoe',
                  numberOfColors: '2 Colors',
                  productImage: 'assets/nike/shoes1.png',
                ),
                ProductCard(
                  productTitle: 'Nike Air Force 1 \'07',
                  price: '\$90',
                  category: 'Women\'s Shoe',
                  numberOfColors: '2 Colors',
                  productImage: 'assets/nike/shoes2.png',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                ProductCard(
                  productTitle: 'Nike Air Force 1 \'07',
                  price: '\$90',
                  category: 'Women\'s Shoe',
                  numberOfColors: '2 Colors',
                  productImage: 'assets/nike/shoes3.png',
                ),
                ProductCard(
                  productTitle: 'Nike Air Force 1 \'07',
                  price: '\$90',
                  category: 'Women\'s Shoe',
                  numberOfColors: '2 Colors',
                  productImage: 'assets/nike/shoes4.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
