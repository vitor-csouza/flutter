import 'package:app/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        drawer: MenuWidget(),
        appBar: AppBar(
          title: Text('Checkpoint 01'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Seu Nome'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook),
                Icon(Icons.phone),
                Icon(Icons.email),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.green,
          child: Icon(Icons.whatsapp),
        ),
      ),
    ),
  );
}