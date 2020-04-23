import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FabActivity extends StatefulWidget {
  @override
  _FabActivityState createState() => _FabActivityState();
}

class _FabActivityState extends State<FabActivity>
    {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      marginRight: 18,
      marginBottom: 20,

      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 20),

      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      tooltip: 'Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 8.0,
      shape: CircleBorder(),
      children: [
        SpeedDialChild(
            child: Icon(Icons.import_contacts),
            backgroundColor: Colors.red,
            label: 'Homework',
            labelStyle: TextStyle(fontSize: 18.0),
        ),
        SpeedDialChild(
          child: Icon(Icons.assignment),
          backgroundColor: Colors.blue,
          label: 'Exam',
          labelStyle: TextStyle(fontSize: 18.0),
        ),
        SpeedDialChild(
          child: Icon(Icons.notifications),
          backgroundColor: Colors.green,
          label: 'Reminder',
          labelStyle: TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }
}
