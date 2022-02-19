import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_changer/config/theme_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: isChanged ? ThemeMode.dark : ThemeMode.light,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Theme Changer'),
            actions: [
              IconButton(
                icon: Icon(
                  isChanged ? CupertinoIcons.moon : CupertinoIcons.sun_max,
                  color: isChanged ? Colors.lightBlue : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    isChanged = !isChanged;
                  });
                },
              ),
            ],
          ),
          body: Center(
            child: Container(
              child: Text(
                isChanged ? 'Dark Theme' : 'Light Theme',
                style: TextStyle(
                  color: isChanged ? Colors.white : Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ));
  }
}
