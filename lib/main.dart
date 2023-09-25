import 'package:flutter/material.dart';

void main() {
  return runApp(MyAcc());
}

class MyAcc extends StatelessWidget {
  const MyAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aspect Ratio"),
      ),
      body: SafeArea(
        child: Container(
          height: 300,
          width: double.infinity,
          color: Colors.deepOrange,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 6/2,
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              color: Colors.lightBlue,
              child: Text("hello"),
            ),
          ),
        ),
      ),
    );
  }
}

