import 'package:auction_app_design/widgets/quick_search_button.dart';
import 'package:auction_app_design/widgets/widgets.dart';
import 'screens/screens.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: buildDrawer(),
      appBar: buildAppBar(),
      body: Column(
        children: [
          buildTopBox(context),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: const [
                Text(
                  'Find Vehicles',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          buildLowerBody(),
        ],
      ),
    );
  }

  Widget buildTopBox(context) {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(35.0),
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Buying with IAA Has Never\nBeen Easier',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: 1.3,
                  height: 1.5,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  width: 150,
                  height: 50,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
              ),
              InkWell(
                child: Container(
                  width: 150,
                  height: 50,
                  alignment: Alignment.center,
                  color: Colors.purpleAccent,
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateAccountScreen(),
                      ));
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  PreferredSizeWidget tabBar() {
    return const TabBar(
      tabs: [Text('Search by Vehicle'), Text('Search by Auction')],
      indicatorColor: Colors.purple,
      labelColor: Colors.purple,
      unselectedLabelColor: Colors.grey,
      labelStyle: TextStyle(fontSize: 18),
      labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }

  Widget buildLowerBody() {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          child: const TabBar(
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 20),
            indicatorColor: Colors.purple,
            tabs: [
              Tab(text: 'Search by Vehicle'),
              Tab(text: 'Search by Auction'),
            ],
          ),
        ),
        Container(
          height: 430,
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
          child: TabBarView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: 'Search makes,models and/or keywords',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                children: const [
                                  Text(
                                    'Quick Search',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            QuickSearchButton(
                              btnLabel: 'Browse Public Vehicles',
                              onTap: () {},
                            ),
                            const SizedBox(height: 10),
                            QuickSearchButton(
                              btnLabel: 'Run & Drive Vehicles',
                              onTap: () {},
                            ),
                            const SizedBox(height: 10),
                            QuickSearchButton(
                              btnLabel: 'Buy Now Vehicles',
                              onTap: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: 'Search by Branch, City or State',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                children: const [
                                  Text(
                                    'Quick Search',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            QuickSearchButton(
                              btnLabel: 'Today',
                              onTap: () {},
                            ),
                            const SizedBox(height: 10),
                            QuickSearchButton(
                              btnLabel: 'Tomorrow',
                              onTap: () {},
                            ),
                            const SizedBox(height: 10),
                            QuickSearchButton(
                              btnLabel: 'Timed Auctions',
                              onTap: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
