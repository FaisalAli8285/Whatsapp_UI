import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:Home() ,
    );
  }
}