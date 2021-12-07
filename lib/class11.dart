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
              title: Text('Home'),
              leading: Icon(Icons.home),
              onLongPress: () {},
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.account_box_rounded),
              onLongPress: () {},
            ),
          ],
        ),
      ),
      body: Center(
        // child: Image.asset('name'),
        child: Image.network(
            'https://images.pexels.com/photos/10254311/pexels-photo-10254311.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
      ),
    );
  }
}
