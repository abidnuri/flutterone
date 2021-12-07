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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                // readOnly: true,
                enabled: true,
                autofocus: true,
                // obscureText: true,
                style: TextStyle(
                  color: Colors.blue[500],
                ),
                decoration: InputDecoration(
                  label: Text('Name'),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.red.withOpacity(0.5),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                // readOnly: true,
                enabled: true,
                autofocus: true,
                obscureText: true,
                style: TextStyle(
                  color: Colors.red,
                ),
                decoration: InputDecoration(
                  label: Text('Password'),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Colors.green,
                      // ),
                      ),
                  // filled: true,
                  // fillColor: Colors.red.withOpacity(0.5),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Submit'),
          )
        ],
      ),
    );
  }
}
