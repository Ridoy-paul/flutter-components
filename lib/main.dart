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
        home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    ButtonStyle styleOne = ElevatedButton.styleFrom(
      padding: EdgeInsets.fromLTRB(30, 2, 30, 2),
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepOrangeAccent,
      minimumSize: Size(double.infinity, 50),
      textStyle: TextStyle(
        letterSpacing: 2,
        fontSize: 15,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder', style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.deepOrangeAccent,

        centerTitle: false,
        leading: Icon(Icons.menu),
        actions: [
          Container(
            margin: EdgeInsets.all(7),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(10),
            ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart), color: Colors.white,)
          ),
        ],
      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(2, 4, 2, 4),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[


              ],
            ),
          ),
        ),
      ),
    );
  }
}

