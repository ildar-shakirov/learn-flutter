import 'package:flutter/material.dart';
import 'screens/signin/signin_sreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lardi test app',
      home: SignInScreen(),
    );
  }
}
