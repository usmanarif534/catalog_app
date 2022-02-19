import 'package:flutter/material.dart';
import 'package:simple_task/customer/customer_model.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  String newCustomer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: customers.isNotEmpty ? customers.length : 1,
        itemBuilder: (context, index) {
          return customers.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 8.0),
                    tileColor: Colors.orange.withOpacity(0.2),
                    title: Text(
                      customers[index].name,
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          customers.removeAt(index);
                        });
                      },
                    ),
                  ),
                )
              : Container(
                  height: 700,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Click on add button to add a customer',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 15,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: Image.network(
                            'https://cdn.dribbble.com/users/7649113/screenshots/16305289/media/16ca7b70cfe5f459855d3ec57cbd57a7.jpg?compress=1&resize=400x300',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.orangeAccent.withOpacity(0.3),
                          ),
                          child: TextField(
                            autofocus: true,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: 'Add a customer',
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              setState(() {
                                newCustomer = value;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        TextButton(
                          onPressed: () {
                            newCustomer.isNotEmpty
                                ? Navigator.pop(context)
                                : null;
                            setState(() {
                              newCustomer.isNotEmpty
                                  ? customers.add(Customer(name: newCustomer))
                                  : null;
                              newCustomer = '';
                            });
                          },
                          child: const Text(
                            'Done',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                          ),
                        )
                      ],
                    ),
                  );
                });
          });
        },
      ),
    );
  }
}
