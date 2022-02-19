import 'package:flutter/material.dart';

Widget buildBottomNavigationBar(
    {void Function(int)? onClick, required int selectedIndex}) {
  return BottomNavigationBar(
    items: items,
    onTap: onClick,
    currentIndex: selectedIndex,
    selectedItemColor: Colors.deepOrange,
  );
}

List<BottomNavigationBarItem> items = [
  const BottomNavigationBarItem(
      icon: Icon(Icons.hotel_outlined), label: 'Hotels'),
  const BottomNavigationBarItem(
      icon: Icon(Icons.store_outlined), label: 'Shops'),
  const BottomNavigationBarItem(
      icon: Icon(Icons.account_box_outlined), label: 'Customers'),
];
