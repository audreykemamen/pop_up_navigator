import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  String title;

  SecondPage(String title){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new SafeArea(
        child: new Center(
          child: new Text("Welcome on second page"),
        ),
      ),
    );
  }

}