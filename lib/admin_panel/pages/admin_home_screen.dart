// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobile_showcases/admin_panel/style/admin_colord.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  String filter = 'All';

  List<String> products = ['product1', 'product2', 'product3'];

  searchProducts(String value) {
    setState(() {
      products = products
          .where(
              (element) => element.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: adminBackground,
      body: Row(
        children: [
          _buildRightNavigationBar(),
          const SizedBox(
            width: 30,
          ),
          _buildCenterBody(context),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: adminPrimary.withOpacity(.1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: searchController,
                      onChanged: (value) {
                        searchProducts(value);
                      },
                      decoration: const InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.credit_card),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(Icons.notifications),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(Icons.inbox),
                        const SizedBox(
                          width: 12,
                        ),
                        const CircleAvatar(
                          radius: 16,
                          backgroundImage:
                              AssetImage('assets/calm/profile02.png'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Text('Your to-Do list'),
                    const SizedBox(
                      height: 12,
                    ),
                    const ListTile(
                      leading: Icon(Icons.calendar_month),
                      title: Text('Run payroll'),
                      subtitle: Text('Mar 4 at 6:00PM'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.calendar_month),
                      title: Text('Run payroll'),
                      subtitle: Text('Mar 4 at 6:00PM'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.calendar_month),
                      title: Text('Run payroll'),
                      subtitle: Text('Mar 4 at 6:00PM'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.calendar_month),
                      title: Text('Run payroll'),
                      subtitle: Text('Mar 4 at 6:00PM'),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: adminPrimary.withOpacity(.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        controller: searchController,
        onChanged: (value) {
          searchProducts(value);
        },
        decoration: const InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildCenterBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Good morning, James!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SingleChildScrollView(
          child: Row(
            children: [
              _buildInfoCard(),
              const SizedBox(
                width: 16,
              ),
              _buildInfoCard(),
              const SizedBox(
                width: 16,
              ),
              _buildInfoCard(),
              const SizedBox(
                width: 16,
              ),
              _buildInfoCard(),
            ],
          ),
        ),
        // Recent emails
        const SizedBox(
          height: 32,
        ),
        Row(
          children: [
            Column(
              children: [
                _buildSuccessCard(),
                const SizedBox(
                  height: 12,
                ),
                _buildRedInformation()
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                40,
              ),
              child: SizedBox(
                width: 400,
                height: 250,
                child: Image.asset(
                  'assets/calm/chart.png',
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        _buildRecentEmailsSection(context)
      ],
    );
  }

  Widget _buildSuccessCard() {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          const BoxShadow(),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'New clients',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '54',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Chip(
                  backgroundColor: adminGreen,
                  label: Text(
                    '+18.5%',
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRedInformation() {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          const BoxShadow(),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Invoices overdue',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '54',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Chip(
                  backgroundColor: adminRed,
                  label: Text(
                    '+18.5%',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRecentEmailsSection(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.3),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recent emails',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            _buildUserRow(),
            _buildUserRow(),
            _buildUserRow(),
            _buildUserRow(),
            _buildUserRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildUserRow() {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage('assets/calm/profile01.png'),
          ),
          const Text(
            'Roberto Juarez',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const Text(
            'Meeting scheduled',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const Text(
            '1:24 P.M',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard() {
    return Container(
      width: 200,
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.card_giftcard),
                Icon(Icons.more_vert)
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              '\$143,624',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Your bank \nbalance',
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRightNavigationBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          color: adminPrimary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: const [
            SizedBox(
              height: 50,
            ),
            Text(
              'DAPPR',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.table_bar,
              color: Colors.white,
            ),
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.payment,
              color: Colors.white,
            ),
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.chair,
              color: Colors.white,
            ),
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.shop,
              color: Colors.white,
            ),
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.badge,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
