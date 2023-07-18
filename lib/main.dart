import 'package:flutter/material.dart';
import 'package:tiktok_clone/authentication/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black,
      ),
      home: LoginScreen(),

    );
  }
}


