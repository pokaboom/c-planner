import 'package:flutter/material.dart';

class OverView extends StatefulWidget {
  @override
  _OverViewState createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20),
              child: Wrap(
                spacing: 18,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 110,
                    child: RaisedButton(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        'TIMETABLE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    child: RaisedButton(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      color: Colors.orange,
                      onPressed: () {},
                      child: Text(
                        'AGENDA',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    child: RaisedButton(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      color: Colors.lightGreen,
                      onPressed: () {},
                      child: Text(
                        'CALENDAR',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    child: RaisedButton(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      color: Colors.teal,
                      onPressed: () {},
                      child: Text(
                        'SUBJECTS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
