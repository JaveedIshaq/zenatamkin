import 'package:flutter/material.dart';
import 'package:zena_tamkin/views/views.dart';

void main() {
  runApp(const MyApp());
}

/// MyApp is the Parent Widget of the App
class MyApp extends StatelessWidget {
  /// MyApp Constructor
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zena Tamkin',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Poppins',
      ),
      home: const HomeView(),
    );
  }
}
