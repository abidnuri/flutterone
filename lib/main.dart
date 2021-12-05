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
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fspd3-1.fna.fbcdn.net/v/t1.6435-9/126055920_1928818417259960_8439267374145155608_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=06y5gBZ2IvwAX_rBeX7&tn=-ITyfQxVkYqpnBtA&_nc_ht=scontent.fspd3-1.fna&oh=dd5ae9eb44ef51e545377b8d83250673&oe=61CC8AFF"),
              ),
              accountName: Text(
                'Abid Nuri',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              accountEmail: Text(
                'abidnuri@gmail.com',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            // DrawerHeader(
            //   child: Text('Abid'),
            //   decoration: BoxDecoration(
            //     color: Colors.amberAccent,
            //   ),
            // ),
            ListTile(
              title: Text('emails'),
              leading: Icon(Icons.mail_rounded),
            ),
            ListTile(
              title: Text('contact'),
              leading: Icon(Icons.perm_contact_cal),
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
