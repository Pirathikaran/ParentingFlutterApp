import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test1/tracksleep.dart';
import 'package:test1/tracksleeptable.dart';

import 'aboutus.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(child: Text("Home")),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              tooltip: 'Menu',
              child: Icon(
                Icons.more_vert,
                size: 28.0,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Aboutus()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: Text(
                            "About Us",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Aboutus()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              transform: Matrix4.translationValues(0.0, -10.0, 0.0),
              child: Center(
                child: Image(
                  image: AssetImage('images/appicon.png'),
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrackSleep()));
                      },
                      child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Colors.red),
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  alignment: Alignment.topCenter,
                                  image: AssetImage('images/4.jpg'),
                                  fit: BoxFit.cover)),
                          child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Key To Learning",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.red),
                              ))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrackSleepTable()));
                      },
                      child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Colors.red),
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  alignment: Alignment.topCenter,
                                  image: AssetImage('images/3.jpg'),
                                  fit: BoxFit.cover)),
                          child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Think-Grow Ideas",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.red),
                              ))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrackSleepTable()));
                      },
                      child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Colors.red),
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  alignment: Alignment.topCenter,
                                  image: AssetImage('images/2.jpg'),
                                  fit: BoxFit.cover)),
                          child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Grow&Development",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.red),
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrackSleepTable()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5.0)),
                        height: 90,
                        width: 100,
                        child: Card(
                            color: Colors.red,
                            child: Container(
                                alignment: Alignment.center,
                                color: Colors.blue,
                                child: Text(
                                  "Library",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ),
                  ]),
                  Stack(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrackSleepTable()));
                      },
                      child: Container(
                        height: 90,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Card(
                            color: Colors.red,
                            child: Container(
                                alignment: Alignment.center,
                                color: Colors.blue,
                                child: Text(
                                  "Track",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ),
                  ]),
                  Stack(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrackSleepTable()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5.0)),
                        height: 90,
                        width: 100,
                        child: Card(
                            color: Colors.red,
                            child: Container(
                                alignment: Alignment.center,
                                color: Colors.blue,
                                child: Text(
                                  "Quiz",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrackSleepTable()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5.0)),
                        height: 90,
                        width: 100,
                        child: Card(
                            color: Colors.red,
                            child: Container(
                                alignment: Alignment.center,
                                color: Colors.blue,
                                child: Text(
                                  "Chat",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ),
                  ]),
                  Stack(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrackSleepTable()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5.0)),
                        height: 90,
                        width: 100,
                        child: Card(
                            color: Colors.red,
                            child: Container(
                                alignment: Alignment.center,
                                color: Colors.blue,
                                child: Text(
                                  "Contribution",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ),
                  ]),
                  Stack(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrackSleepTable()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5.0)),
                        height: 90,
                        width: 100,
                        child: Card(
                            color: Colors.red,
                            child: Container(
                                alignment: Alignment.center,
                                color: Colors.blue,
                                child: Text(
                                  "Apps",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
