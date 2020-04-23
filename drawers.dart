import 'package:flutter/material.dart';
import './event/subject.dart';
import 'dart:io';
import './timetable.dart';
import './calendar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                     children: <Widget>[
                       RawMaterialButton(
                         fillColor: Colors.white,
                         onPressed: () {

                         },
                         child: Text('login'),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(18),
                           side: BorderSide(color: Colors.brown),
                         ),
                       )
                     ],
                   ),

                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(62, 81, 183, 1),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 12),
                child: ListTile(
                  title: Text(
                    'Overview',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {},
                  leading: Icon(Icons.home),
                ),
              ),
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 12),
                child: ListTile(
                  title: Text(
                    'Agenda',
                    style: TextStyle(fontSize: 17),
                  ),
                  leading: Icon(Icons.book),
                ),
              ),
              Container(
                height: 47,
                margin: EdgeInsets.only(bottom: 12),
                width: double.infinity,
                child: ListTile(
                  title: Text(
                    'Calendar',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Calendar()));
                  },
                  leading: Icon(Icons.calendar_today),
                ),
              ),
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => TimeTable()));
                  },
                  title: Text(
                    'Timetable',
                    style: TextStyle(fontSize: 17),
                  ),
                  leading: Icon(Icons.border_all),
                ),
              ),
              Container(
                child: Divider(
                  color: Colors.teal,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  title: Text(
                    'Grades',
                    style: TextStyle(fontSize: 17),
                  ),
                  leading: Icon(Icons.equalizer),
                ),
              ),
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  title: Text(
                    'Subjects',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Subject()));
                  },
                  leading: Icon(Icons.library_books),
                ),
              ),
              Container(
                height: 47,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  title: Text(
                    'Attendance',
                    style: TextStyle(fontSize: 17),
                  ),
                  leading: Icon(Icons.assignment_turned_in),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
