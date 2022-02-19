import 'package:flutter/material.dart';
import 'package:practice/home/customers/customer_model.dart';
import 'package:stacked/stacked.dart';

class AddCustomerViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  String inputValue = '';
  List<Customers>? customers = [];
  Customers? customer;

  onAddCustomer(value) {
    inputValue = value;
    notifyListeners();
  }

  onSaveButton(BuildContext context) {
    formKey.currentState!.save();

    customer = Customers(inputValue);
    debugPrint(customer!.name);
    Navigator.pop(context, customer);

    notifyListeners();
  }
}
