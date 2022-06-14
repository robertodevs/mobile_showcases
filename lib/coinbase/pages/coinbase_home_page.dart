// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobile_showcases/coinbase/style/coinbase_style.dart';

class CoinbaseHomePage extends StatelessWidget {
  const CoinbaseHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const asset = 'assets/coinbase/';
    const image = 'bitcoin.png';
    const name = 'Bitcoin';
    const abbreviation = 'BTC';
    const percentage = '5.96%';
    const currency = 'SGD 40,394.34';
    const graph = 'graph1.png';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Chip(
            backgroundColor: coinbasePrimary.withOpacity(0.2),
            label: Row(
              children: const [
                Icon(
                  Icons.card_giftcard,
                  color: coinbasePrimary,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'Get SGD 14',
                  style: TextStyle(color: coinbasePrimary),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_active,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const Text('Your balance'),
          Text(
            'SGD 129.22',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 24,
          ),
          _buildMainActionsRow(),
          const SizedBox(
            height: 16,
          ),
          _buildMetaData(asset),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Watchlist',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const CoinCard(
              asset: asset,
              image: image,
              name: name,
              abbreviation: abbreviation,
              graph: graph,
              currency: currency,
              percentage: percentage),
          const CoinCard(
              asset: asset,
              image: 'ehtereum.png',
              name: 'Ethereum',
              abbreviation: 'ETH',
              graph: 'graph3.png',
              currency: currency,
              percentage: percentage),
          const CoinCard(
              asset: asset,
              image: image,
              name: name,
              abbreviation: abbreviation,
              graph: graph,
              currency: currency,
              percentage: percentage),
          const CoinCard(
              asset: asset,
              image: 'cardand.png',
              name: 'Cardand',
              abbreviation: abbreviation,
              graph: 'graph2.png',
              currency: currency,
              percentage: percentage),
          const CoinCard(
              asset: asset,
              image: 'graph.png',
              name: 'Graph',
              abbreviation: abbreviation,
              graph: 'graph2.png',
              currency: currency,
              percentage: percentage),
          const CoinCard(
              asset: asset,
              image: 'solana.png',
              name: 'Solana',
              abbreviation: abbreviation,
              graph: graph,
              currency: currency,
              percentage: percentage),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 175,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(30)),
            child: const Center(
              child: Text(
                'See all',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Top movers',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 175,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Image.asset(
                          '$asset/bitcoin.png',
                          width: 40,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Text(
                              'THETA',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text('SGD 1.65'),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_downward,
                              color: coinbaseRed,
                            ),
                            const Text(
                              '11.91',
                              style:
                                  TextStyle(fontSize: 32, color: coinbaseRed),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Image.asset(
                          '$asset/solana.png',
                          width: 40,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Text(
                              'THETA',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text('SGD 1.65'),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_downward,
                              color: coinbaseGreen,
                            ),
                            const Text(
                              '11.91',
                              style:
                                  TextStyle(fontSize: 32, color: coinbaseGreen),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Image.asset(
                          '$asset/graph.png',
                          width: 40,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Text(
                              'THETA',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text('SGD 1.65'),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_downward,
                              color: coinbaseRed,
                            ),
                            const Text(
                              '11.91',
                              style:
                                  TextStyle(fontSize: 32, color: coinbaseRed),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Image.asset(
                          '$asset/ehtereum.png',
                          width: 40,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Text(
                              'THETA',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text('SGD 1.65'),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_downward,
                              color: coinbaseRed,
                            ),
                            const Text(
                              '11.91',
                              style:
                                  TextStyle(fontSize: 32, color: coinbaseRed),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }

  Widget _buildMetaData(String asset) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 2,
                width: 25,
                decoration: const BoxDecoration(color: Colors.black),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Earn up to 5.00% APR',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('Learn how to earn rewards on Coinbase'),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(Icons.close),
            Image.asset(
              '$asset/image1.png',
              width: 75,
            ),
          ],
        )
      ],
    );
  }

  Widget _buildMainActionsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: coinbasePrimary,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Buy')
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: coinbasePrimary,
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Sell')
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: coinbasePrimary,
              child: Icon(
                Icons.upload,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Send')
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: coinbasePrimary,
              child: Icon(
                Icons.download,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Receive')
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: coinbasePrimary,
              child: Icon(
                Icons.restart_alt,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Convert')
          ],
        ),
      ],
    );
  }
}

class CoinCard extends StatelessWidget {
  const CoinCard({
    Key? key,
    required this.asset,
    required this.image,
    required this.name,
    required this.abbreviation,
    required this.graph,
    required this.currency,
    required this.percentage,
  }) : super(key: key);

  final String asset;
  final String image;
  final String name;
  final String abbreviation;
  final String graph;
  final String currency;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                '$asset$image',
                width: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    abbreviation,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            '$asset$graph',
            width: 60,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(currency),
              Text(percentage),
            ],
          ),
        ],
      ),
    );
  }
}
