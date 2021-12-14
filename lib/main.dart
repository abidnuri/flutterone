import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('''Abid App'''),
        centerTitle: true,
        backgroundColor: Colors.green,
        shadowColor: Colors.green,
        elevation: 80,
        leading: Container(
          child: Image.network(
            'https://cdn.pixabay.com/photo/2017/05/26/16/08/glass-2346358_1280.png',
            fit: BoxFit.fill,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.red,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        backgroundColor: Colors.green,
        selectedItemColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onLongPress: () {},
            ),
            ListTile(
              title: const Text('About'),
              leading: const Icon(Icons.account_box_rounded),
              onLongPress: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 15,
          child: Container(
            color: Colors.amber,
            child: Center(
              child: Text("Drinks Well"),
            ),
          ),
        ),
      ),
    );
  }
}
