import 'package:assignment_live_10/assignment_10_live.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home : AssLive(),

    );
  }
}