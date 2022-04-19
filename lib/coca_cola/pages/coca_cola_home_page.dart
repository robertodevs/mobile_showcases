import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CocaColaHomePage extends StatefulWidget {
  const CocaColaHomePage({Key? key}) : super(key: key);

  @override
  State<CocaColaHomePage> createState() => _CocaColaHomePageState();
}

class _CocaColaHomePageState extends State<CocaColaHomePage> {
  PageController controller = PageController(viewportFraction: 0.6);
  double currentProduct = 0;
  int currentProductQuantity = 0;
  double currentTotal = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Pick your drink',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'CLEAR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: const Color(0xFFDE0432),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$${currentTotal.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    'BUY',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 385,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentProduct = index.toDouble();
                });
              },
              children: [
                Image.asset('assets/coca_cola/normal.png'),
                Image.asset('assets/coca_cola/light.png'),
                Image.asset('assets/coca_cola/zero.png'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DotsIndicator(
            dotsCount: 3,
            position: currentProduct,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        currentProductQuantity -= 1;
                        currentTotal = currentProductQuantity * 0.7;
                      });
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                width: 75,
                child: Center(
                  child: Text(
                    currentProductQuantity.toString(),
                    style: const TextStyle(fontSize: 32),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      currentProductQuantity += 1;

                      currentTotal = currentProductQuantity * 0.7;
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
