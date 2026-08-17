import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quotes_app/screens/quotes_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.of(context)
      .push(
        MaterialPageRoute(
          builder: 
          (context) => QuotesScreen()
          )
          );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(child: Icon(Icons.flutter_dash,size: 200,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Developed By:'),
              Text('Ally Soft Solutions',
               style:TextStyle(fontWeight: FontWeight.bold)),
            ],
          )
        ],
      )
    );
  }
}