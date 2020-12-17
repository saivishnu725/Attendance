import 'package:flutter/material.dart';

List<String> names = ['1', '2', '3', '4', '5', '6', '7'];
Map<String, double> sal;
Widget actionAppBar() {
  return Row(children: [
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
        debugPrint(
            "Total of all ppl."); //TODO: Add total salary of all ppl together for the current week.
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
  ]);
}
