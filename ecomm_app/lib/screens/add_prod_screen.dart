import 'package:flutter/material.dart';

class AddProdScreen extends StatelessWidget {
  const AddProdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Ecomm App')
      ),
      body:Column(
        children: [
          TextField(
            controller:null,
            decoration: InputDecoration(
              hintText: 'Enter product name',
              labelText:'Name',
            ),
          ),
          TextField(
            controller:null,
            decoration: InputDecoration(
              hintText: 'Enter product description',
              labelText:'Description',
            ),
          ),
          TextField(
            controller:null,
            decoration: InputDecoration(
              hintText: 'Enter product price',
              labelText:'Price',
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Add'))
        ],
      )
    );
  }
}