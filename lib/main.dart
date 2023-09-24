import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            textStyle: TextStyle(
              letterSpacing: 2,
              fontSize: 15.0,
            ),
          ),
        ),
        ),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card in Flutter', style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.purple,
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
              child: IconButton(onPressed: (){}, icon: Icon(Icons.add_call), color: Colors.white,)
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.deepOrange,
                    elevation: 4,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Center(child: Text("This is Card 1", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.purple,
                    elevation: 4,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Center(child: Text("This is Card 2", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.lightBlue,
                    elevation: 4,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Center(child: Text("This is Card 3", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
