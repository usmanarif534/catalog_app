import 'package:flutter/material.dart';
import 'package:practice/home/customers/form_vm.dart';
import 'package:stacked/stacked.dart';

class AddCustomer extends ViewModelBuilderWidget<AddCustomerViewModel> {
  const AddCustomer({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Customer'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Form(
              key: viewModel.formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                              color: Colors.orange,
                            )),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                      onSaved: viewModel.onAddCustomer,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          viewModel.onSaveButton(context);
                        },
                        child: const Text('Add'))
                  ],
                ),
              )),
        ));
  }

  @override
  AddCustomerViewModel viewModelBuilder(BuildContext context) {
    return AddCustomerViewModel();
  }
}
