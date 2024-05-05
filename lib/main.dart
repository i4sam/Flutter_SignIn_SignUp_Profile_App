import 'package:flutter/material.dart';
import 'package:notify_app/pages/sign_in_page.dart';
import 'package:notify_app/pages/starting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome Back',
      home: const StartingPage(),
      routes: {
        '/sign_in_page': (context) => const SignInPage(),
      },
    );
  }
}
