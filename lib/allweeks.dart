import 'package:flutter/material.dart';

class AllWeeks extends StatefulWidget {
  AllWeeks({Key key}) : super(key: key);

  @override
  _AllWeeksState createState() => _AllWeeksState();
}

class _AllWeeksState extends State<AllWeeks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: Text('Week 1'),
        // leading: Icon(Icons.add),
        centerTitle: true,
      ),
    );
  }
}
