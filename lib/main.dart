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
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              width: 300,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://pngimage.net/wp-content/uploads/2019/05/royal-enfield-png-4.png'),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
            ),
            const Positioned(
              left: -40,
              top: -40,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xff1E1E1E),
                child: Text(
                  'in Stock',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
