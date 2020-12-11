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
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(08.0),
              child: Text(
                "${names[index]}",
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            leading: Text(
              "Ttl_per_p",
              style: TextStyle(
                color: Colors.amber[700],
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(left:80.0),
              child: IconButton(
                splashColor: Colors.blue,
                icon: Icon(Icons.add),
                onPressed: () {
                  debugPrint(
                      "Add one if not added for person $names[$index]");
                  setState(() {
                    if (addColor == Colors.blue) {
                      addColor = Colors.white;
                    }
                    else
                    {
                      addColor = Colors.blue;
                    }
                  });
                },
                color: addColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
