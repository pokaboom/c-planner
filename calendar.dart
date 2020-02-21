import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import './drawers.dart';
class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _controller;



  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawers(),
        appBar: AppBar(
          title: Text('Calendar'),
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              TableCalendar(calendarController: _controller),
            ],
          ),
        ),
      ),
    );
  }
}
