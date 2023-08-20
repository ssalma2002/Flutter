import 'package:flutter/material.dart';
import 'product.dart';
import 'card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home:
      Scaffold(
        appBar: AppBar(
          title: Text("Shopping app"),
          centerTitle: true,
        ),
        body:
        Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child : Wrap (
                spacing: 10,
                runSpacing: 10,
                children: [
                  ...products.map((product)=> card(product: product)).toList(),],

              ),



            ),

          ),




        ),
      ),
    );
  }
}


