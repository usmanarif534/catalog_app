import 'package:flutter/material.dart';

class ShopsScreen extends StatelessWidget {
  const ShopsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> tabss = [tab1(), tab2()];
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: TabBar(
          labelStyle: const TextStyle(fontSize: 22),
          labelPadding: const EdgeInsets.symmetric(vertical: 8),
          labelColor: Colors.black,
          tabs: tabss),
    ));
  }
}

Widget tab1() {
  return const Text('Islamabad');
}

Widget tab2() {
  return const Text('Rawalpindi');
}
