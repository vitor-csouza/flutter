


import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
  )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double size = 200;
  double minSize = 50;
  double maxSize = 500;
  double red = 0;
  double green = 0;
  double blue = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Exemplo'),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              if (size > minSize){
                size -= 50;
              }              
            });
          }, icon: const Icon(
            Icons.remove,
          ),
          ),
          IconButton(onPressed: () {
              setState(() {
                size = 50;
              });
          }, icon: const Text('S'),
          ),
          IconButton(onPressed: () {
              setState(() {
                size = 300;
              });
          }, icon: Text('M')
          ),
          IconButton(onPressed: () {
              setState(() {
                size = 500;
              });
          }, icon: Text('L')
          ),
          IconButton(onPressed: () {
            setState(() {
              if (size < maxSize){
                size += 50;
              }
            });
          }, icon: const Icon(
            Icons.add,
          ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Icon(
              Icons.alarm,
              size: size,
              color: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1)
              ),

            ),
            Slider(
              min: 0,
              max: 255,
              value: red, 
              divisions: 255,
              onChanged: (double value) {
                setState(() {
                  red = value;
                });
              },
              activeColor: Colors.red,
            ),
            Slider(
              min: 0,
              max: 255,
              value: green,
              divisions: 255,
              onChanged: (double value) {
                setState(() {
                  green = value;
                });
              },
              activeColor: Colors.green,
            ),
            Slider(
              min: 0,
              max: 255,
              value: blue,
              divisions: 255,
              onChanged: (double value) {
                setState(() {
                  blue = value;
                });
              },
              activeColor: Colors.blue,
            ),
        ],
      )
    );
  }

}