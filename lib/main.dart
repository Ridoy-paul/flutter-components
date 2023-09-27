import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

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
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bootstrap"),
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BootstrapContainer(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
            fluid: true,
            children: <Widget>[
              BootstrapRow(
                  children: [
                    BootstrapCol(
                      sizes: 'col-6 col-sm-6 col-md-4 col-xl-4',
                      child: ContentWidget(
                        color: Colors.deepOrange,
                        text: 'col-6 col-sm-6',
                      ),
                    ),
                    BootstrapCol(
                      sizes: 'col-6 col-sm-6 col-md-4 col-xl-4',
                      child: ContentWidget(
                        color: Colors.deepOrange,
                        text: 'col-6 col-sm-6',
                      ),
                    ),
                    BootstrapCol(
                      sizes: 'col-12 col-sm-6 col-md-4 col-xl-4',
                      child: ContentWidget(
                        color: Colors.deepOrange,
                        text: 'col-12 col-sm-6',
                      ),
                    ),


                  ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      height: 50,
      color: color,
      child: Center(child: Text(text, style: TextStyle(color: Colors.white),)),
    );
  }
}

