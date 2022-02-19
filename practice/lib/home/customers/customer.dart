import 'package:flutter/material.dart';
import 'package:practice/home/customers/customer_model.dart';
import 'package:practice/home/home_vm.dart';

class CustomerScreen extends StatelessWidget {
  final HomeViewModel viewModel;
  const CustomerScreen(this.viewModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: viewModel.customers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(28, 12, 0, 12),
              child: Text(viewModel.customers[index].name),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addcustomer').then((value) {
            viewModel.customer = value as Customers;
            viewModel.customers.add(viewModel.customer!);
            print(viewModel.customer);
            viewModel.notifyListeners();
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.cyan[900],
      ),
    );
  }
}
