import 'package:flutter/material.dart';
import 'package:quotes_app/screens/splash_screen.dart';

void main(){
  runApp(QuoteApp());
}
class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}