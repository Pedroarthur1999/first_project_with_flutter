import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color containerColor = Colors.green;

  void mudarCor() {
    setState(() {
      containerColor = Color.fromARGB(255, Random().nextInt(256),
          Random().nextInt(256), Random().nextInt(256));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'First',
          ),
        ),
        body: Container(
          //  child: Icon(Icons.toggle_off),
          decoration: BoxDecoration(color: containerColor),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('hello world'),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  ),
                  child: Text('Login'),
                  onPressed: mudarCor,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.all(10),
                  ),
                  onPressed: mudarCor,
                  child: Text('Cadastre-se'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
