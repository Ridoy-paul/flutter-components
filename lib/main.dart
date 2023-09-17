import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My AppBar"),
        centerTitle: true,
        backgroundColor: Colors.teal,

        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {

          },
        ),
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              tooltip: 'Cart',
              icon: Icon(Icons.shopping_cart)
          ),
          IconButton(
              onPressed: (){},
              tooltip: 'Contact',
              icon: Icon(Icons.wifi_calling_sharp)
          ),
          IconButton(
              onPressed: (){},
              tooltip: 'Account',
              icon: Icon(Icons.account_circle)
          ),
        ],
      ),
    );
  }
}