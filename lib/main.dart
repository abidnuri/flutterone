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
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Abid Shop'),
        backgroundColor: Colors.pink,
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: CircleAvatar(
          //     radius: 50,
          //     backgroundColor: Colors.green,
          //     child: Icon(Icons.shopping_cart),
          //   ),
          // ),
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
              )),
        ],
        elevation: 10,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    // color: Colors.grey,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Colors.pink,
                          Colors.purple,
                        ],
                        begin: Alignment.topCenter, //direction of color
                        end: Alignment.bottomCenter, //direction of color
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "আমার জুতা",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Size - 9",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Brand : Adidas",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    left: 28,
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          backgroundColor: Colors.white,
                        ),
                        Image.network(
                            "https://freepngimg.com/thumb/shoes/27428-5-nike-shoes-transparent-background.png")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
