import 'package:flutter/material.dart';
import 'package:myapp/pages/Login_Page.dart';
import 'package:myapp/pages/Sign_in.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  // appBar: AppBar(
  //   centerTitle: true,
  //   title: Text('Deep Blaze'),
  //   backgroundColor: Color.fromARGB(255, 15, 15, 15),
  // ),

  _body() {
    return Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _img(),
            ],
          ),
          Center(
              child: SizedBox(
            child: _button('Login', Login()),
            width: 150,
          )),
          Center(
              child: SizedBox(
            child: _button('Cadastro', SignIn()),
            width: 150,
          )),
        ],
      ),
    );
  }

  _button(String text, page) {
    return TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            backgroundColor: Color.fromARGB(150, 9, 87, 70)),
        child: _text(text),
        onPressed: () => OnClickNavigator(page));
  }

  void OnClickNavigator(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  _img() {
    return Image.asset(
      "assets/images/deepblaze_logo_250x250.png",
      width: 300,
      height: 500,
    );
  }

  _text(String text1) {
    return Text(
      text1,
      style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          //fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w400),
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
    

