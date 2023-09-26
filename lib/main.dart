import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    Orientation displayOrientation = MediaQuery.orientationOf(context);
    List<DisplayFeature> displayFeatures = MediaQuery.displayFeaturesOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query in Flutter'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Screen Size: ${size}"),
              Text("Width: ${size.width}"),
              Text("Height: ${size.height}"),
              Text("Aspect Ratio: ${size.aspectRatio}"),
              Text("Flipped Info: ${size.flipped}"),
              Text("Orientation: ${displayOrientation}"),
              Text("Display Features: ${displayFeatures}"),
              SizedBox(height: 20,),
              Container(
                child: SizedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width/2.2,
                          height: MediaQuery.sizeOf(context).width/2,
                          child: Card(
                            color: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width/2.2,
                          height: MediaQuery.sizeOf(context).width/2,
                          child: Card(
                            color: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

