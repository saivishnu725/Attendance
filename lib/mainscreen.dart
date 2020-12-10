import 'package:flutter/material.dart';

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
            debugPrint("Screen for other weeks list..."); //TODO: Add new screen for displaying all previous weeks list .
          },
          elevation: 0.0,
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
        actions: [
          RaisedButton(
            elevation: 0.0,
            color: Colors.blueGrey[700],
            splashColor: Colors.amber[600],
            child: Text(
              "Total",
              style: TextStyle(
                  // color: Colors.amber[600],
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              debugPrint("Total of all ppl."); //TODO: Add total salary of all ppl together for the current week.
            },
          ),
          RaisedButton(
            splashColor: Colors.amber[600],
            color: Colors.blueGrey[700],
            elevation: 0.0,
            child: Icon(Icons.add),
            onPressed: () {
              debugPrint("New person add screen."); //TODO: Add a new user screen.
            },
          ),
        ],
      ),
    );
  }
}
