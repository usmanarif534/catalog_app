import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        length: 2,
        child: TabBar(
          indicatorColor: Colors.deepOrange,
          labelColor: Colors.deepOrange,
          labelStyle: TextStyle(fontSize: 20),
          labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          tabs: [
            Text('Gujranwala'),
            Text('Daska'),
          ],
        ),
      ),
    );
  }
}
