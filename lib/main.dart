import 'package:flutter/material.dart';
import 'package:portfolio/screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false   ,
      title: 'Swarnim Jain',
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      home: HomeScreen(),
    );
  }
}
