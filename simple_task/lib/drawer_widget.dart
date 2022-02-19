import 'package:flutter/material.dart';
import 'package:simple_task/home_page.dart';

Widget buildDrawer({required BuildContext context}) {
  return Drawer(
    backgroundColor: const Color.fromARGB(255, 9, 34, 54),
    child: ListView(
      padding: const EdgeInsets.symmetric(vertical: 15),
      children: [
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.deepOrange,
                radius: 53,
                child: CircleAvatar(
                  child: Icon(Icons.add_a_photo),
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 199, 191, 191),
                ),
              ),
              Text(
                'Usman Rajpoot',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Divider(
                thickness: 1,
                height: 1,
                color: Colors.white,
              )
            ],
          ),
        ),
        const SizedBox(height: 50.0),
        Column(children: tiles(context)),
      ],
    ),
  );
}

List<Widget> tiles(BuildContext context) => [
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {},
      ),
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        leading: const Icon(
          Icons.account_box,
          color: Colors.white,
        ),
        title: const Text(
          'Account',
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {},
      ),
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        leading: const Icon(
          Icons.hotel,
          color: Colors.white,
        ),
        title: const Text(
          'Hotels',
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(0),
              ));
        },
      ),
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        leading: const Icon(
          Icons.shop,
          color: Colors.white,
        ),
        title: const Text(
          'Shops',
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(1),
              ));
        },
      ),
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        leading: const Icon(
          Icons.navigation,
          color: Colors.white,
        ),
        title: const Text(
          'Navigation',
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {},
      ),
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        leading: const Icon(
          Icons.contact_phone,
          color: Colors.white,
        ),
        title: const Text(
          'Contact Us',
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {},
      ),
    ];
