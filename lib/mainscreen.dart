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
          ListTile(
            leading: Text(
              "tot_for_1",
              style: TextStyle(
                  color: Colors.amber[700], fontWeight: FontWeight.bold),
            ),
            title: Text(
              names[0],
              style: TextStyle(
                  color: Colors.yellow[700], fontWeight: FontWeight.bold),
            ),
            trailing: RaisedButton.icon(
              onPressed: () {
                debugPrint("Add one for 1");
              },
              icon: Icon(Icons.add),
              label: Text(" "),
              elevation: 0.0,
              color: Colors.grey[800],
              splashColor: Colors.yellow[700],
            ),
          ), //1
          ListTile(
            leading: Text(
              "tot_for_2",
              style: TextStyle(
                  color: Colors.amber[700], fontWeight: FontWeight.bold),
            ),
            title: Text(
              names[1],
              style: TextStyle(
                  color: Colors.yellow[700], fontWeight: FontWeight.bold),
            ),
            trailing: RaisedButton.icon(
              onPressed: () {
                debugPrint("Add one for 2");
              },
              icon: Icon(Icons.add),
              label: Text(" "),
              elevation: 0.0,
              color: Colors.grey[800],
              splashColor: Colors.yellow[700],
            ),
          ), //2
          ListTile(
            leading: Text(
              "tot_for_3",
              style: TextStyle(
                  color: Colors.amber[700], fontWeight: FontWeight.bold),
            ),
            title: Text(
              names[2],
              style: TextStyle(
                  color: Colors.yellow[700], fontWeight: FontWeight.bold),
            ),
            trailing: RaisedButton.icon(
              onPressed: () {
                debugPrint("Add one for 3");
              },
              icon: Icon(Icons.add),
              label: Text(" "),
              elevation: 0.0,
              color: Colors.grey[800],
              splashColor: Colors.yellow[700],
            ),
          ), //3
          ListTile(
            leading: Text(
              "tot_for_4",
              style: TextStyle(
                  color: Colors.amber[700], fontWeight: FontWeight.bold),
            ),
            title: Text(
              names[3],
              style: TextStyle(
                  color: Colors.yellow[700], fontWeight: FontWeight.bold),
            ),
            trailing: RaisedButton.icon(
              onPressed: () {
                debugPrint("Add one for 4");
              },
              icon: Icon(Icons.add),
              label: Text(" "),
              elevation: 0.0,
              color: Colors.grey[800],
              splashColor: Colors.yellow[700],
            ),
          ), //4
          ListTile(
            leading: Text(
              "tot_for_5",
              style: TextStyle(
                  color: Colors.amber[700], fontWeight: FontWeight.bold),
            ),
            title: Text(
              names[4],
              style: TextStyle(
                  color: Colors.yellow[700], fontWeight: FontWeight.bold),
            ),
            trailing: RaisedButton.icon(
              onPressed: () {
                debugPrint("Add one for 5");
              },
              icon: Icon(Icons.add),
              label: Text(" "),
              elevation: 0.0,
              color: Colors.grey[800],
              splashColor: Colors.yellow[700],
            ),
          ), //5
          ListTile(
            leading: Text(
              "tot_for_6",
              style: TextStyle(
                  color: Colors.amber[700], fontWeight: FontWeight.bold),
            ),
            title: Text(
              names[5],
              style: TextStyle(
                  color: Colors.yellow[700], fontWeight: FontWeight.bold),
            ),
            trailing: RaisedButton.icon(
              onPressed: () {
                debugPrint("Add one for 6");
              },
              icon: Icon(Icons.add),
              label: Text(" "),
              elevation: 0.0,
              color: Colors.grey[800],
              splashColor: Colors.yellow[700],
            ),
          ), //6
          ListTile(
            leading: Text(
              "tot_for_7",
              style: TextStyle(
                  color: Colors.amber[700], fontWeight: FontWeight.bold),
            ),
            title: Text(
              names[6],
              style: TextStyle(
                  color: Colors.yellow[700], fontWeight: FontWeight.bold),
            ),
            trailing: RaisedButton.icon(
              onPressed: () {
                debugPrint("Add one for 7");
              },
              icon: Icon(Icons.add),
              label: Text(" "),
              elevation: 0.0,
              color: Colors.grey[800],
              splashColor: Colors.yellow[700],
            ),
          ), //7
        ],
      ),
    );
  }
}
