import 'package:flutter/material.dart';

import 'screens/product_screen.dart';

void main(){
  runApp(EcommApp());
}
class EcommApp extends StatelessWidget {
  const EcommApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ProductScreen(),
    );
  }
}