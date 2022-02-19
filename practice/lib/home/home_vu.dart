import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'customers/customer.dart';
import 'home_vm.dart';
import 'hotels/hotel.dart';
import 'shops/shops.dart';

class HomeScreen extends ViewModelBuilderWidget<HomeViewModel> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    List<Widget> widgetScreens = [];
    widgetScreens.add(const HotelScreen());
    widgetScreens.add(const ShopsScreen());
    widgetScreens.add(CustomerScreen(viewModel));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[900],
          title: const Text('Main Screen'),
        ),
        drawer: Drawer(
          child: IconButton(
            icon: const Icon(Icons.person),
            iconSize: 80,
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ),
        body: IndexedStack(
            index: viewModel.selectedIndex, children: widgetScreens),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: viewModel.selectedIndex,
          onTap: viewModel.onBottomTabChange,
          items: const [
            BottomNavigationBarItem(
              label: 'Hotels',
              icon: Icon(Icons.hotel),
            ),
            BottomNavigationBarItem(
                label: 'Shops', icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(
                label: 'Customers', icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return HomeViewModel();
  }
}
