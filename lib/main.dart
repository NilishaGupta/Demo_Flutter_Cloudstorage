import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return cexample();
  }
}

class cexample extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my app",
      home: new Scaffold(
        appBar: AppBar(
          title: Text("cloude firestore"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new RaisedButton(
                onPressed: _add,
                child: Text("add"),
                color: Colors.greenAccent,
              ),
              new Padding(padding: const EdgeInsets.all(10.0)),
              new RaisedButton(
                onPressed: _update,
                child: Text("update"),
                color: Colors.lightGreenAccent,
              ),
              new Padding(padding: const EdgeInsets.all(10.0)),
              new RaisedButton(
                onPressed: _delete,
                child: Text("delete"),
                color: Colors.lightGreen,
              ),
              new Padding(padding: const EdgeInsets.all(10.0)),
              new RaisedButton(
                onPressed: _fatch,
                child: Text("fatch"),
                color: Colors.green,
              ),
              new Padding(padding: const EdgeInsets.all(10.0)),
            ],
          ),
        ),
      ),
    );
  }

  void _add() {
    Map<String, String>data = <String, String>{
      "name": "sushant",
      "city": "baroda",
    };
    DocumentReference documentReference =
    Firestore.instance.collection("users").document("info");

    documentReference.setData(data).whenComplete((){
      print("data inserted");
    }).catchError((e)=>print(e) );
  }

  void _update() {Map<String, String>data = <String, String>{
      "name": "khiskoli",
      "city": "unknown",
    };
    DocumentReference documentReference =
    Firestore.instance.collection("users").document("info");

    documentReference.setData(data).whenComplete((){
      print("data inserted");



    }).catchError((e)=>print(e) );}

  void _delete() {Map<String, String>data = <String, String>{
      "name": "sushant",
      "city": "baroda",
    };
    DocumentReference documentReference =
    Firestore.instance.collection("users").document("info");

    documentReference.setData(data).whenComplete((){
      print("data inserted");
    }).catchError((e)=>print(e) );}

  void _fatch() {Map<String, String>data = <String, String>{
      "name": "sushant",
      "city": "baroda",
    };
    DocumentReference documentReference =
    Firestore.instance.collection("users").document("info");

    documentReference.setData(data).whenComplete((){
      print("data inserted");
    }).catchError((e)=>print(e) );}


}
