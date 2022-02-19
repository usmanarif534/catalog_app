import 'package:flutter/material.dart';
import 'package:practice/home/home_vu.dart';

import 'home/customers/form.dart';
import 'home/folder/profile.dart';

Map<String, WidgetBuilder> approutes = {
  '/': (context) => const HomeScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/addcustomer': (context) => const AddCustomer(),
};
