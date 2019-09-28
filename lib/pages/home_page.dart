import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:print_play/utils/print.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Click a button to print a color to the console(only for Android)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
						CupertinoButton(onPressed: () => printInfo("Printing some info"),color: Colors.blue, child: Text("Printing some info"),),
						CupertinoButton(onPressed: () => printError("Printing an error"), color: Colors.red, child: Text("Printing an error"),),
						CupertinoButton(onPressed: () => printPink("Printing pink"),color: Colors.pink, child: Text("Printing pink"),),
						CupertinoButton(onPressed: () => printPurple("Printing purple"),color: Colors.purple, child: Text("Printing purple"),),
						CupertinoButton(onPressed: () => printSuccess("Printing success"),color: Colors.green, child: Text("Printing Success"),),
						CupertinoButton(onPressed: () => printWarning("Printing a warning"),color: Colors.yellow, child: Text("Printing a warning"),),
          ],
        ),
      ),
		);
  }
}