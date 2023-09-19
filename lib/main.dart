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
        title: Text("Row & Column"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * 0.33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), // Adjust border radius as needed
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: Offset(0, 3), // Offset of the shadow
                    ),
                  ],
                ),
                child: ClipRect(
                  //borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    "https://avatars.githubusercontent.com/u/53790501?v=4",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              

            ],
          ),
        ),
      ),

    );
  }
}

