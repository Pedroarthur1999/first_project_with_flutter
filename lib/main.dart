import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: home(),
    );
  }

  home() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Deep Blaze'),
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 29, 29, 29),
              Color.fromARGB(255, 0, 0, 0)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: _img(),
        ),
      ),
    );
  }

  _button() {
    return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          backgroundColor: Color.fromARGB(150, 9, 87, 70)),
      child: _text(),
      onPressed: () {},
    );
  }

  _img() {
    return Image.asset(
      "assets/images/deepblaze_logo_250x250.png",
      width: 300,
      height: 500,
    );
  }

  _text() {
    return Text(
      'Login',
      style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          //fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
    );
  }
}


























  // Color containerColor = Colors.green;

  // void mudarCor() {
  //   setState(() {
  //     containerColor = Color.fromARGB(255, Random().nextInt(256),
  //         Random().nextInt(256), Random().nextInt(256));
  //   });
  // }
              // mainAxisAlignment: MainAxisAlignment.center,
              // children: [
              //   Text('hello world'),
              //   TextButton(
              //     style: TextButton.styleFrom(
              //       backgroundColor: Color.fromARGB(255, 0, 0, 0),
              //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              //     ),
              //     child: Text('Login'),
              //     onPressed: mudarCor,
              //   ),
              //   TextButton(
              //     style: TextButton.styleFrom(
              //       backgroundColor: Color.fromARGB(255, 0, 0, 0),
              //       padding: EdgeInsets.all(10),
              //     ),
              //     onPressed: mudarCor,
              //     child: Text('Cadastre-se'),
              //   ),
              // ],
          //  child: Icon(Icons.toggle_off),