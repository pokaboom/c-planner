import 'package:flutter/material.dart';
class OverView extends StatefulWidget {
  @override
  _OverViewState createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          height: 20,
          width: 20,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
            ),
            color: Colors.red,
            onPressed: (){},
            child: Text('TIMETABLE'),
          ),
        ),

        Container(
          height: 20,
          width: 20,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.yellow)
            ),
            onPressed: (){},
            child: Text('AGENDA'),
          ),
        ),
        Container(
          height: 20,
          width: 20,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.lightGreen)
            ),
            onPressed: (){},
            child: Text('CALENDAR'),
          ),
        ),
        Container(
          height: 20,
          width: 20,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.teal)
            ),
            onPressed: (){},
            child: Text('SUBJECTS'),
          ),
        ),
      ],
    );
  }
}
