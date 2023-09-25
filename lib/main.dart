import 'package:flutter/material.dart';

void main() {
  return runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  void _countUp() {
    setState(() {
      count++;
      if(count >= 5) {
        print("up");
      }
    });
  }

  void _countDown() {
    setState(() {
      if(count > 0) {
        count--;
      }
      if(count >= 5) {
        print("up");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App $count"),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Count", style: TextStyle(fontSize: 30),),
                Text("$count", style: TextStyle(fontSize: 50),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                       _countDown();
                    }, child: Icon(Icons.remove)),
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      _countUp();
                    }, child: Icon(Icons.add)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


