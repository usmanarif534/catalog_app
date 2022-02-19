import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar(String title) {
  return AppBar(
    centerTitle: true,
    title: Text(title),
    backgroundColor: Colors.deepOrange,
  );
}
