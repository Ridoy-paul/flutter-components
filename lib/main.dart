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
        letterSpacing: 2,
        fontSize: 15,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      )
    );

    ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      padding: EdgeInsets.fromLTRB(25, 4, 25, 4),
      foregroundColor: Colors.black,
        side: BorderSide(color: Colors.red),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      textStyle: TextStyle(
        fontSize: 18,
        letterSpacing: 2,
      )

    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons in Flutter'),
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

                        child: Text('Elevated Button')
                    ),
                    SizedBox(height: 10,),
                    TextButton(onPressed: () {}, child: Text("Text Button")),
                    SizedBox(height: 10,),
                    OutlinedButton(onPressed: (){}, style: outlinedButtonStyle, child: Text("Outlined Button")),
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

