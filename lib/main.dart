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

  myAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: Text("Alert"),
                content: Text("Do you want to delete?"),
                actions: [
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("No")),
                  ElevatedButton(onPressed: (){}, child: Text("Yes")),
                ],
              ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    ButtonStyle styleOne = ElevatedButton.styleFrom(
      padding: EdgeInsets.fromLTRB(30, 2, 30, 2),
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepPurpleAccent,
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
        title: Text('Alert Dialog in Flutter'),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: false,
        leading: Icon(Icons.menu),
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
                    ElevatedButton(
                        onPressed: (){
                          myAlertDialog(context);
                        },
                        //icon: Icon(Icons.card_travel)
                        style: styleOne,
                        child: Text('Alert Dialog')
                    ),
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

