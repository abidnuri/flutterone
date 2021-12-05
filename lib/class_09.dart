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
      drawer: const Drawer(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.brown,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.amber,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ), //for spacing something
          Row(
            children: const [
              Text("Second Row"),
            ],
          ),
        ],
      ), // part two

      // Row(
      //   children: [
      //     //Use "ctrl+." for wrap something
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.black,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 5, // 60% of space => (6/(6 + 4))
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.green,
      //         alignment: Alignment.center,
      //         child: Container(
      //           height: 50,
      //           width: 50,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(10),
      //             color: Colors.cyan,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),//Part One
    );
  }
}
