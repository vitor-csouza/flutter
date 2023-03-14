import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Checkpoint 01"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Vitor",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook_sharp, color: Colors.blue),
                Icon(Icons.phone, color: Colors.green),
                Icon(
                  Icons.mail_sharp,
                  color: Colors.red,
                )
              ],
            ),
          ],
        )),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage( '../assets/download.png')),
                accountName: Text("Vitor"),
                accountEmail: Text("vitorandre6@gmail.com"),
              ),
              ListTile(
                title: Text("Primary"),
                leading: Icon(Icons.abc),
              ),
              ListTile(
                title: Text("Social"),
                leading: Icon(Icons.person_off_outlined),
              ),
              ListTile(
                title: Text("Promotions"),
                leading: Icon(Icons.abc),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.whatsapp, color: Colors.white,),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
