import 'package:flutter/material.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Quote App'),
      ),
      body:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Text('Quote',style:TextStyle(fontSize: 40)),
          Text('Author'),
        ],
      )
    );
  }
}