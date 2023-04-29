import 'package:dukanapp/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue[700],
          appBarTheme: AppBarTheme(
            color: Colors.blue[700],
          )),
      home: const HomeScreen(),
    );
  }
}
