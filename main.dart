import 'dart:io';
import './overview.dart';
import './calendar.dart';
import './FAB.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

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
  File _storageImage;
  Future<void> _takePicture() async {
    final _imageFile = await ImagePicker.pickImage(source: ImageSource.gallery,);
    setState(() {
      _storageImage = _imageFile;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),

      floatingActionButton: FabActivity(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.dvr),title: Text('Overview')),
        BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text('Settings'))
      ]),
      body: OverView(),
      drawer: Drawer(
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
                    _storageImage != null ? Image.file(_storageImage,fit: BoxFit.fill,) : FloatingActionButton(
                      onPressed: _takePicture,
                      child: Icon(
                        Icons.camera_alt,
                        size: 25,
                      ),
                      backgroundColor: Color.fromRGBO(60, 66, 150, 1),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      height: 40,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Your name',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            'offline',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    FloatingActionButton(
                        heroTag: 'fa1',
                        onPressed: () {},
                        child: Icon(
                          Icons.settings,
                          size: 30,
                        ),
                        elevation: 0,
                        backgroundColor: Color.fromRGBO(62, 81, 183, 1)),
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
                  height: 35,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    title: Text(
                      'Overview',
                      style: TextStyle(fontSize: 17),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OverView()),
                      );
                    },
                    leading: Icon(Icons.home),
                  ),
                ),
                Container(
                  height: 35,
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
                  height: 35,
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
                  height: 35,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 20),
                  child: ListTile(
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
                  height: 35,
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
                  height: 35,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 20),
                  child: ListTile(
                    title: Text(
                      'Subjects',
                      style: TextStyle(fontSize: 17),
                    ),
                    leading: Icon(Icons.library_books),
                  ),
                ),
                Container(
                  height: 35,
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
                Container(
                  height: 35,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 20),
                  child: ListTile(
                    title: Text(
                      'Teachers',
                      style: TextStyle(fontSize: 17),
                    ),
                    leading: Icon(Icons.person),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}