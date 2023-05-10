import 'package:flutter/material.dart';

class VectaryHomePage extends StatelessWidget {
  const VectaryHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF545FDA);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        title: const Text(
          'Headphones Vectary II',
          style: TextStyle(color: primaryColor),
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.shopping_cart,
              color: primaryColor,
            ),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: primaryColor,
            ),
            child: const Center(
              child: Text(
                'PURCHASE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(
            //   height: 450,
            //   child: WebView(
            //     javascriptMode: JavascriptMode.unrestricted,
            //     initialUrl: 'https://app.vectary.com/p/67DYztYygdLBUQzEomj5QH',
            //     //initialUrl: 'https://app.vectary.com/p/1258svli4o5B26CZ6o86Zf',
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Shoes II',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Chip(
                    label: const Text('SHOES'),
                    backgroundColor: primaryColor.withOpacity(0.3),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Chip(
                    label: const Text('CLOTH'),
                    backgroundColor: primaryColor.withOpacity(0.3),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'This is a important product description about the headphones, the headphones has important features you will enjoy when you get it',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  const Text(
                    'Quantity',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: const Center(child: Text('1')),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            width: 1, color: Colors.grey.withOpacity(0.3))),
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.add),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
