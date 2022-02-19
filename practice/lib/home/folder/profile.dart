import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Profile')),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPrm4ByyxNmDoPagtfa0X4Z5xx7iMoOPvFdQ&usqp=CAU',
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
