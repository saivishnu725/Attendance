import 'package:flutter/material.dart';
import 'data.dart';

var addColor = Colors.white;
var remColor = Colors.white;

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey[700],
        title: RaisedButton(
          color: Colors.blueGrey[700],
          onPressed: () {
            debugPrint(
                "Screen for other weeks list..."); //TODO: Add new screen for displaying all previous weeks list .
          },
          elevation: 0.0,
          splashColor: Colors.blueGrey[700],
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              "Week 1",
              style: TextStyle(
                color: Colors.yellow[700],
                // fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        // centerTitle: true,
        leading: Icon(Icons.money_off),
        actions: [actionAppBar()],
      ),
      body: ListView(
        children: [
          //Moving away from the template cuz i dont have to add new ppl.
          ListTile(),//1
          ListTile(),//2
          ListTile(),//3
          ListTile(),//4
          ListTile(),//5
          ListTile(),//6
          ListTile(),//7
        ],
      ),
    );
  }
}
