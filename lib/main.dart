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
      backgroundColor: Colors.red,
      textStyle: TextStyle(
        letterSpacing: 4,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      )

    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(2, 4, 2, 4),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){},
                        //icon: Icon(Icons.card_travel)
                        style: styleOne,

                        child: Text('Submit')
                    ),
                    TextButton(onPressed: () {}, child: Text("Go to link")),
                    OutlinedButton(onPressed: (){}, child: Text("Outline")),

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

