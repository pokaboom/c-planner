/*import 'package:flutter/material.dart';

class FabActivity extends StatefulWidget {
  @override
  _FabActivityState createState() => _FabActivityState();
}

class _FabActivityState extends State<FabActivity>
    with TickerProviderStateMixin {
  AnimationController _controller;
  DateTime _dateTime;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 60,
          width: 56,
          alignment: FractionalOffset.topCenter,
          child: ScaleTransition(
            scale: CurvedAnimation(
                parent: _controller,
                curve: Interval(1.0, 1.0, curve: Curves.easeOut)),
            child: RawMaterialButton(
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                    firstDate: DateTime(2001),
                    lastDate: DateTime(2021)
                ).then((date) {
                  setState(() {
                    _dateTime = date;
                  });
                });
              },
              child: Icon(
                Icons.notifications,
                color: Colors.black87,
              ),
              shape: CircleBorder(),
              elevation: 10,
              fillColor: Colors.white,
            ),
//            RaisedButton(
//              // mini: true,
//              // heroTag: 'reminder',
//              onPressed: () {},
//              child: Icon(Icons.notifications),
//            ),
          ),
        ),
        Container(
          height: 60,
          width: 56,
          alignment: FractionalOffset.topCenter,
          child: ScaleTransition(
            scale: CurvedAnimation(
                parent: _controller,
                curve: Interval(0.5, 1.0, curve: Curves.easeOut)),
            child: RawMaterialButton(
              onPressed: () {},
              child: Icon(
                Icons.assignment,
                color: Colors.black87,
              ),
              shape: CircleBorder(),
              elevation: 10,
              fillColor: Colors.white,
            ),
          ),
        ),
        Container(
          height: 60,
          width: 56,
          alignment: FractionalOffset.topCenter,
          child: ScaleTransition(
            scale: CurvedAnimation(
                parent: _controller,
                curve: Interval(0.0, 1.0, curve: Curves.easeOut)),
            child: RawMaterialButton(
              onPressed: () {},
              child: Icon(
                Icons.import_contacts,
                color: Colors.black87,
              ),
              shape: CircleBorder(),
              elevation: 10,
              fillColor: Colors.white,
            ),
          ),
        ),
        Container(
          height: 60,
          width: 56,
          child: RawMaterialButton(
            onPressed: () {
              if (_controller.isDismissed) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
            },
            shape: CircleBorder(),
            elevation: 10,
            fillColor: Color.fromRGBO(60, 66, 150, 1),
            child: Icon(Icons.add,color: Colors.white,),
          ),
        ),
      ],
    );
  }
}
*/
