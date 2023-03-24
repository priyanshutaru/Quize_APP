// ignore_for_file: prefer_const_constructors

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
      title: 'Geeks For Geeks',
      theme: ThemeData(
        primarySwatch: Colors.green,  //this is the primary color. whcih automatically used by the appbar and elevated button
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentindex = 0;                 //this is the indexing if we not give it than also it start form the 0 indexing.

  void buttonClicked() {
    setState(() {                                  //setstate using for the rerender the screen if we not use than it not show the sceond text
      currentindex = currentindex + 1;
    });
    print("button one");          // this is the output when you tap on the button but it showing you in console not on screen
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "Priyanshu is a developer",                            //list of text which the text get form here 
      "You can also become the gfg developer",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Geeks For Geeks"), //this is app bar text
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // for virtical centere and padding for the horizental center
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              //questions.elementAt(1),
              questions[
                  currentindex], //here index and text come form the upper list of question and indexing start form the 0
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height:
                  40, // this is use for giving the spacing between the text and the button
            ),
            ElevatedButton(
              onPressed: buttonClicked,
              child: Text(
                  "Press Here"), // this is the button text and we use the elevated button and it take the primary color but
              // we cam change the elevated button colors.
            ),
          ],
        ),
      ),
    );
  }
}
