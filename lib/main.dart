import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My AppBar"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,

        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {

          },
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.wifi_calling_sharp)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.account_circle)
          ),

        ],
      ),
    );
  }
}