import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Bottom Nav Bar'),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {

        },
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Icon(Icons.call),
          tooltip: 'Contact',
          onPressed: () {

          },
        ),
        IconButton(
          icon: Icon(Icons.account_circle),
          tooltip: 'Account',
          onPressed: () {

          },
        )
      ],
    );
  }
}