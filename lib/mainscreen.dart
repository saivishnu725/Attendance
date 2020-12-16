import 'package:flutter/material.dart';
import 'allweeks.dart';
import 'data.dart';

String date = '${DateTime.now()}'.substring(0, 10);
List<int> total = [0, 0, 0, 0, 0, 0, 0];
List addColor = [
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white
];
List remColor = [
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white
];

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
          child: RaisedButton(
            elevation: 0.0,
            color: Colors.blueGrey[700],
            child: Text(
              "Week 1",
              style: TextStyle(
                color: Colors.yellow[700],
                // fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AllWeeks();
              }));
            },
          ),
        ),
        // centerTitle: true,
        leading: Icon(Icons.money_off),
        actions: [actionAppBar()],
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text(
              "${total[index]}",
              style: TextStyle(
                  color: Colors.amber[700], fontWeight: FontWeight.bold),
            ),
            title: Row(
              children: [
                Text(
                  names[index],
                  style: TextStyle(
                      color: Colors.yellow[700], fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Text(
                    "abc",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            // subtitle: Text("sub"),
            trailing: RaisedButton(
              child: Icon(
                Icons.add,
                color: addColor[index],
              ),
              elevation: 0.0,
              color: Colors.grey[800],
              onPressed: () {
                debugPrint('$date');
                setState(() {
                  if (addColor[index] == Colors.blue) {
                    debugPrint("Remove the day for ${names[index]}");
                    total[index] -= 1;
                    addColor[index] = Colors.white;
                  } else {
                    debugPrint("Add the day for ${names[index]}");
                    total[index] += 1;
                    addColor[index] = Colors.blue;
                  }
                });
              },
            ),
          );
        },
      ),
    );
  }
}
