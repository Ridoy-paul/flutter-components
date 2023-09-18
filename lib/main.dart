import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text("Flutter Container"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          height: 150.0,
          width: 300.0,
          alignment: Alignment.center,
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

