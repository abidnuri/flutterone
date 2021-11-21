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
        ),
        drawer: const Drawer(),
        // body: Container(
        //     height: 300,
        //     width: 300,
        //     color: Colors.cyan,
        //     alignment: Alignment.center,
        //     child: Container(
        //       height: 150,
        //       width: 150,
        //       color: Colors.black,
        //       alignment: Alignment.center,
        //       child: Container(
        //         height: 50,
        //         width: 50,
        //         color: Colors.red,
        //         alignment: Alignment.center,
        //       ),
        //     )
        //     )
        body: Container(
            height: 600,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  // margin: const EdgeInsets.all(10),
                  color: Colors.cyan,
                ),
                Container(
                  height: 50,
                  width: 50,
                  // margin: const EdgeInsets.all(10),
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  // margin: const EdgeInsets.all(10),
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  //margin: const EdgeInsets.all(10),
                  color: Colors.blue,
                ),
              ],
            )));
  }
}
