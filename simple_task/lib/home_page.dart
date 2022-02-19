import 'package:flutter/material.dart';
import 'package:simple_task/app_bar_widget.dart';
import 'package:simple_task/bottom_bar.dart';
import 'package:simple_task/customer/customer_screen.dart';
import 'package:simple_task/drawer_widget.dart';
import 'package:simple_task/hotel/hotel_screen.dart';
import 'package:simple_task/shop/shop_screen.dart';

class HomePage extends StatefulWidget {
  int pageIndex;
  HomePage(this.pageIndex, {Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  static const List<Widget> _screens = [
    HotelScreen(),
    ShopScreen(),
    CustomerScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar('Home Page'),
        drawer: buildDrawer(context: context),
        body: _screens
            .elementAt(widget.pageIndex < 0 ? selectedIndex : widget.pageIndex),
        bottomNavigationBar: buildBottomNavigationBar(
          onClick: (index) {
            setState(() {
              widget.pageIndex = -1;
              selectedIndex = index;
              widget.pageIndex < 0 ? null : selectedIndex = widget.pageIndex;
            });
          },
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
