import 'package:flutter/material.dart';
import 'package:sinibeli_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SiniBeli-mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(secondary: const Color.fromARGB(255, 154, 225, 119)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
