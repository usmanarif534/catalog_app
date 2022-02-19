import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = 'Usman Rajpoot';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Catalog App'),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Container(
          child: Text('Welcome to $days days of fltter by $name'),
        ),
      ),
    );
  }
}
