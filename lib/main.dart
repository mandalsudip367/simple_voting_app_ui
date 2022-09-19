import 'package:flutter/material.dart';
import 'Screens/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        MyHomePage.routeName: (context) => MyHomePage(),
        Reaction.routeName: (context) => const Reaction(),
        Related.routeName: (context) => const Related(),
      },
    );
  }
}
