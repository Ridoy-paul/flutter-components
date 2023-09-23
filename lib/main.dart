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
        title: Text('Simple Navigation', style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.teal,
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>ActivityOne("This is from Activity one")));
                  },
                  child: Text("Go Activity 1")
              ),
              SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: Text("Go Activity 2")
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ActivityOne extends StatelessWidget {
  String msg;
  ActivityOne(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Activity Page One",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Go back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


