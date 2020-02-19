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
        shrinkWrap: false,
        children: <Widget>[
          Container(
            height: 40,
            width: 110,

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
            height: 40,
            width: 110,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              ),
              color: Colors.yellow,
              onPressed: (){},
              child: Text('AGENDA'),
            ),
          ),
          Container(
            height: 40,
            width: 110,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              ),
    color: Colors.lightGreen,
              onPressed: (){},
              child: Text('CALENDAR'),
            ),
          ),
          Container(
            height: 40,
            width: 110,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              ),
    color: Colors.teal,
              onPressed: (){},
              child: Text('SUBJECTS'),
            ),
          ),
        ],
      );

  }
}
