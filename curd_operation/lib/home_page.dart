import 'package:curd_operation/product_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CURD Operation'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15.0),
        itemCount: products.length,
        itemBuilder: (contex, index) {
          return ListTile(
            title: Text(products[index].productName),
            subtitle:
                Text('Price : ' + products[index].price.toString() + '/-'),
            leading: Container(
              height: 40,
              width: 50,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.0)),
              child: Text(
                products[index].category,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            tileColor: Colors.blueGrey,
            textColor: Colors.white,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container();
                });
          });
        },
      ),
    );
  }
}
