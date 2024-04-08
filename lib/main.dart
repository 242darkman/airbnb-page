import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Airbnb Page Example",
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade600)),
      home: HomeScreen(),
    );
  }
}
