import 'package:ecomm_app/screens/add_prod_screen.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Ecom App'),
      ),
      body:

      Column(
        children: [
          TextField(
            decoration:InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search)
            )
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder:(context,index)=>ListTile(
                title:Text('Product Name'),
                subtitle:Text('Description'),
                trailing:Text('500')
            ),
            ),
          ),
        ],
      ),
      floatingActionButton: 
      FloatingActionButton(onPressed: (){
        Navigator.of(context)
        .push(
          MaterialPageRoute(builder: (context) => AddProdScreen(),)
          );
      }, child: Icon(Icons.add),),
    );
  }
}