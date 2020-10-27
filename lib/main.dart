import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            title: Center(child: Text('Ask anything to me')),
            backgroundColor: Colors.blue[600],
          ),
          body: ImagePage(),
        ),
      ),
    );

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  num = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$num.png'),
            ),
          )
        ],
      ),
    );
  }
}
