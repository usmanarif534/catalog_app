import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.hotel,
          color: Colors.deepOrange,
          size: 100,
        ),
      ),
    );
  }
}
