import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Body extends StatefulWidget{
  @override
  _BodyState createState() => new _BodyState();

}

class _BodyState extends State<Body>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new RaisedButton(
          textColor: Colors.white,
          color: Colors.black,
          child: new Text("Click here",
            style: new TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 18.0,
            ),
          ),
          onPressed: (){
            setSimpleAlert("Le Cameroun c'est la magie", "237 is baby forever");
      }),
    );
  }

  void setSnackBar(){
    SnackBar snackBar = new SnackBar(
        content: new Text('Snacké!'),
        duration: new Duration(seconds: 5),
        elevation: 12.0,
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future<Null> setAlertDialog() async {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
          return new AlertDialog(
            title: new Text("Alerté!"),
            content: new Text("La vie est high!"),
            actions: <Widget> [
              new FlatButton(
                  onPressed: () {
                    print("cancel alert");
                    Navigator.pop(context);
                  },
                  child: new Text("Cancel")),
              new FlatButton(
                  onPressed: () {
                    print("Ok alert");
                    Navigator.pop(context);
                  },
                  child: new Text("ok")),
            ],
          );
      }
    );
  }
  
  Future<Null> setSimpleAlert(String title, String description) async{
    return showDialog(
        context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
          return SimpleDialog(
            title: new Text(title),
            contentPadding: EdgeInsets.all(8.0),
            children: <Widget> [
              new Text(description),
              new RaisedButton(onPressed: (){
                print("Pop up ok");
                Navigator.pop(context);
              },
                child: new Text("Ok ok"),)
            ],
          );
      }
    );
  }

}