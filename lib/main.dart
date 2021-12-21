import 'package:abid/Bag.dart';
import 'package:abid/Discount.dart';
import 'package:abid/cart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pages = [
    const Bag(),
    const Cart(),
    const Discount(),
  ];
  var currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('''Abid App'''),
        centerTitle: true,
        backgroundColor: Colors.green,
        shadowColor: Colors.green,
        elevation: 80,
        leading: Image.network(
          'https://cdn.pixabay.com/photo/2017/05/26/16/08/glass-2346358_1280.png',
          fit: BoxFit.fill,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_basket),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
        actionsIconTheme: const IconThemeData(
          color: Colors.red,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: 'Discount',
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
      body: Column(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: 15,
              child: Container(
                color: Colors.amber,
                child: const Center(
                  child: Text("Drinks Well"),
                ),
              ),
            ),
          ),
          pages[currentPage],
        ],
      ),
    );
  }
}
