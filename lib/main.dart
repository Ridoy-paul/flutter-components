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
        title: Text('Form Input', style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.deepOrangeAccent,

        centerTitle: false,
        leading: Icon(Icons.menu),
        actions: [
          Container(
            margin: EdgeInsets.all(7),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo_outlined), color: Colors.deepPurple,)
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "First name",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Enter your Phone",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Enter your Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: ElevatedButton(
                      onPressed: (){
                        myAlertDialog(context);
                      },
                      //icon: Icon(Icons.card_travel)
                      style: styleOne,
                      child: Text('Submit')
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

