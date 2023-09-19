import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
        title: Text("Flutter Container"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.all(10.0),
                color: Colors.green,
                alignment: Alignment.center,
                
                child: Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),

                ),
              ),
            )
          ],
        ),
        /*
        child: Container(
          height: 150.0,
          width: 300.0,
          margin: EdgeInsets.only(left: 20.0, top: 20.0),
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
        */
      ),
    );
  }
}

