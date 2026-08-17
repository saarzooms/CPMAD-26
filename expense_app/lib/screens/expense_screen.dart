import 'package:expense_app/models/transaction.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  List<Transaction> trans = [];
  TextEditingController txtTitle = TextEditingController();
  TextEditingController txtAmnt = TextEditingController();
  double bal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Expese App', style:TextStyle(color:Colors.brown))
      ),
      body:Column(children: [
        // add
        Column(
          children: [
            TextField( 
              controller: txtTitle,
              decoration :InputDecoration(
                hintText: 'Enter title',
                labelText: 'Title',
              )
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: txtAmnt,
                     decoration :InputDecoration(
                      hintText: 'Enter Amount',
                      labelText: 'Amount',
                    )
                  ),
                ),
                ElevatedButton(onPressed: (){
                  if(txtTitle.text.isNotEmpty && txtAmnt.text.isNotEmpty){
                    trans.add(Transaction(txtTitle.text, double.parse(txtAmnt.text)));
                    txtTitle.clear();
                    txtAmnt.clear();
                    //
                    bal = 0;
                    for(int i =0;i<trans.length;i++){
                      bal += trans[i].amnt;
                    }
                    setState(() {
                      
                    });
                  }
                }, child: Text('Add'))
              ],
            ),
          ],
        ),
        // list
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Balance'),
                  Text('$bal'),
                ],
              ),
              Expanded(
                child: trans.length>0? ListView.builder(
                  itemCount: trans.length,
                  itemBuilder: (context, index) => ListTile(
                  title: Text(trans[index].title),
                  trailing: Text(trans[index].amnt.toString(), style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color:trans[index].amnt>-1?Colors.green:Colors.red
                  )),
                ),):Center(child: Text('No transcation !!!')),
              )
            ],
          ),
        )
      ],)
    );
  }
}