import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/edge_insets.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get centerTitle => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text ("Sign-in"),
          centerTitle: true,
        ),

        body:

          Center(

            child :Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:[
                Container(
                
                width: 200, 
                  height: 200,
                  child: Image.network("https://www.transparentpng.com/thumb/user/black-user-png-icon-bUbPKd.png"),
                ),







              Column(
                children:[
                    Container (
                  padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0.0),
                    child :TextField(
                  style: const TextStyle(color: Colors.black),
                  obscureText: false,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Email",
                  labelText: "Email",
                    prefixIcon: const Icon(Icons.email),

        ),
      ),
    ),
               Container(
                 padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                 child: TextField(
                  style: const TextStyle(color: Colors.black),
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.key),

                  ),
                ),


               ),
              ],
          ),

             Container(
             child:
               Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),




             )
             ] )
          )

          )
                      );







  }
}





