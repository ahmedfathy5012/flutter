import 'package:flutter/material.dart';

class secondScreen extends StatelessWidget{
  var wordPair;

  secondScreen(this.wordPair );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

          title: Center(
          child: Text(wordPair),
        ),
              backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Center(
          child: Text(wordPair,
          style: TextStyle(
            color: Colors.purple,
            fontSize: 40.0
          ),
          ),
        ),
      ),
    );
  }

}





