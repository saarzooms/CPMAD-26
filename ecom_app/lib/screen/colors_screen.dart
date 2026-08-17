import 'dart:developer';

import 'package:flutter/material.dart';

class ColorsScreen extends StatefulWidget {
  ColorsScreen({super.key});

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  var color_list = [Colors.grey, Colors.purple, Colors.yellow, Colors.green];

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Page'),
        actions: [
          IconButton(
            onPressed: () {
              count++;
              setState(() {});
              log("count $count");
            },
            icon: Icon(Icons.restart_alt),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: color_list[(0 + count) % color_list.length],
            ),
          ),
          Expanded(
            child: Container(
              color: color_list[(1 + count) % color_list.length],
            ),
          ),
          Expanded(
            child: Container(
              color: color_list[(2 + count) % color_list.length],
            ),
          ),
          Expanded(
            child: Container(
              color: color_list[(3 + count) % color_list.length],
            ),
          ),
        ],
      ),
    );
  }
}
