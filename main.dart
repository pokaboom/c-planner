import 'dart:io';
import './timetable.dart';
import './overview.dart';
import './calendar.dart';
import './FAB.dart';
import 'package:image_picker/image_picker.dart';
import './drawers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Overview';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      floatingActionButton: FabActivity(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.dvr), title: Text('Overview')),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text('Settings'))
      ]),
      body: OverView(),
      drawer: Drawer(
        child: Drawers(),
      ),
    );
  }
}
