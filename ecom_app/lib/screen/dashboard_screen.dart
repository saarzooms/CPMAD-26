import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});
  var ProductList = [
    {"pname": "Mango", "price": 200},
    {"pname": "Tomato", "price": 20},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecom'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.purple),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(height: 100, color: Colors.purple),
          Text('Categories', style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(width: 50, height: 50, color: Colors.amber),
                  Text('Fruits'),
                ],
              ),
              Column(
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Text('Veg'),
                ],
              ),
              Container(width: 50, height: 50, color: Colors.green),
              Container(width: 50, height: 50, color: Colors.blue),
            ],
          ),
          sectionHeader("New Arrivals"),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < 2; i++) productCard(ProductList[i]),
              ],
            ),
          ),
          sectionHeader("Fruits"),
        ],
      ),
    );
  }

  Widget productCard(var prod) {
    print(prod);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Column(
          children: [
            Container(color: Colors.grey, height: 100, width: 100),
            Text('${prod["pname"]}'),
            Text('${prod["price"]}'),
          ],
        ),
      ),
    );
  }

  Widget sectionHeader(String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text('View All', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
