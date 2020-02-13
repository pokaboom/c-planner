import 'package:flutter/material.dart';

class FabActivity extends StatefulWidget {
  @override
  _FabActivityState createState() => _FabActivityState();
}

class _FabActivityState extends State<FabActivity>
    with TickerProviderStateMixin {
  AnimationController _controller;

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
            child: FloatingActionButton(
              mini: true,
              heroTag: 'reminder',
              onPressed: () {},
              child: Icon(Icons.notifications),
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
                curve: Interval(0.5, 1.0, curve: Curves.easeOut)),
            child: FloatingActionButton(
              mini: true,
              heroTag: 'exam',
              onPressed: () {},
              child: Icon(Icons.assignment),
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
            child: FloatingActionButton(
              mini: true,
              heroTag: 'homework',
              onPressed: () {},
              child: Icon(Icons.import_contacts),
            ),
          ),
        ),
        Container(
          height: 60,
          width: 56,
          child: FloatingActionButton(
            onPressed: () {
              if (_controller.isDismissed) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
            },
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
