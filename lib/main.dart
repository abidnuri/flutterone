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
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Sign In",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 3,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                // readOnly: true,
                enabled: true,
                autofocus: true,
                textCapitalization: TextCapitalization.sentences,
                // obscureText: true,
                style: TextStyle(
                  color: Colors.blue[500],
                ),
                decoration: InputDecoration(
                  label: const Text('Name'),
                  helperText: "Use Capital Letter",
                  hintText: "Input your name",
                  labelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  // ignore: prefer_const_constructors
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.red.withOpacity(0.5),
                ),
              ),
            ),
          ),
          const Padding(
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                // readOnly: true,
                enabled: true,
                autofocus: true,
                // obscureText: true,
                keyboardType: TextInputType.number, //only for popup
                toolbarOptions: ToolbarOptions(
                  copy: false,
                  cut: false,
                  paste: false,
                  selectAll: false,
                ),
                style: TextStyle(
                  color: Colors.red,
                ),
                decoration: InputDecoration(
                  label: Text('Phone'),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefix: Text('+880'),
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Colors.green,
                      // ),
                      ),
                  // filled: true,
                  // fillColor: Colors.red.withOpacity(0.5),
                ),
                maxLength: 10,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                // readOnly: true,
                enabled: true,
                autofocus: true,
                // obscureText: true,
                keyboardType: TextInputType.number, //only for popup
                toolbarOptions: ToolbarOptions(
                  copy: false,
                  cut: false,
                  paste: false,
                  selectAll: false,
                ),
                style: TextStyle(
                  color: Colors.red,
                ),
                decoration: InputDecoration(
                  label: Text('Email'),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  suffix: Text('.com'),
                  suffixIcon: Icon(Icons.mail_rounded),
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
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
