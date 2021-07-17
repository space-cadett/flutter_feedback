import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff20283d),
          fontFamily: "Raleway"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: HomePage(),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var feedbackText = "Could be better";
  var _value = 0.0;
  Color feedBackColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(100),
              child: Container(
                  child: Text(
                "How was  your experience today?",
                style: TextStyle(
                    color: Color(0xffD5DEE5),
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal),
              )),
            ),
            Container(
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 60),
                  child: Container(
                    child: Text(
                      feedbackText,
                      style:
                          TextStyle(color: Color(0xffD5DEE5), fontSize: 16.0),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(30),
                    child: SfSlider(
                        min: 0,
                        max: 30,
                        value: _value,
                        interval: 5,
                        showTicks: false,
                        showLabels: false,
                        enableTooltip: true,
                        minorTicksPerInterval: 1,
                        activeColor: feedBackColor,
                        inactiveColor: Colors.red[100],
                        onChanged: (dynamic value) {
                          setState(() {
                            _value = value;
                            if (_value >= 0 && _value <= 10) {
                              feedBackColor = Colors.pinkAccent;
                              feedbackText =
                                  "we are sorry for your inconvenience";
                            }
                            if (_value >= 11 && _value <= 20) {
                              feedBackColor = Colors.yellowAccent;
                              feedbackText =
                                  "Hope we server you better next time";
                            }
                            if (_value >= 21 && _value <= 30) {
                              feedBackColor = Colors.greenAccent;
                              feedbackText = "We hope you come next time.";
                            }
                          });
                        })),
                Padding(
                    padding: EdgeInsets.all(50),
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => seconPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pinkAccent,
                              onPrimary: Colors.white70,
                              elevation: 5),
                          child: const Text('Next'),
                        ),
                      ],
                    ))),
              ]),
            )
          ],
        ),
      )),
    );
  }
}

class seconPage extends StatefulWidget {
  const seconPage({Key? key}) : super(key: key);
  @override
  _seconPageState createState() => _seconPageState();
}

class _seconPageState extends State<seconPage> {
  var feedbackText = "Could be better";
  var _value = 0.0;
  Color feedBackColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100),
            child: Container(
                child: Text(
              "Overall, how friendly were the hotel staff members?",
              style: TextStyle(
                  color: Color(0xffD5DEE5),
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal),
            )),
          ),
          Container(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Container(
                  child: Text(
                    feedbackText,
                    style: TextStyle(color: Color(0xffD5DEE5), fontSize: 16.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SfSlider(
                    min: 0,
                    max: 30,
                    value: _value,
                    interval: 5,
                    showTicks: false,
                    showLabels: false,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    activeColor: feedBackColor,
                    inactiveColor: Colors.red[100],
                    onChanged: (dynamic value) {
                      setState(() {
                        _value = value;
                        if (_value >= 0 && _value <= 10) {
                          feedBackColor = Colors.pinkAccent;
                          feedbackText = "we are sorry for your inconvenience";
                        }
                        if (_value >= 11 && _value <= 20) {
                          feedBackColor = Colors.yellowAccent;
                          feedbackText = "Hope we server you better next time";
                        }
                        if (_value >= 21 && _value <= 30) {
                          feedBackColor = Colors.greenAccent;
                          feedbackText = "We hope you come next time.";
                        }
                      });
                    }),
              ),
              Padding(
                  padding: EdgeInsets.all(80),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FourthPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pinkAccent,
                              onPrimary: Colors.white70,
                              elevation: 5),
                          child: Text('Next'),
                        ),
                      ],
                    ),
                  )),
            ]),
          )
        ],
      ),
    ));
  }
}

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  var feedbackText = "Could be better";
  var _value = 0.0;
  Color feedBackColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100),
            child: Container(
                child: Text(
              "How quick was the check-in process?",
              style: TextStyle(
                  color: Color(0xffD5DEE5),
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal),
            )),
          ),
          Container(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Container(
                  child: Text(
                    feedbackText,
                    style: TextStyle(color: Color(0xffD5DEE5), fontSize: 16.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SfSlider(
                    min: 0,
                    max: 30,
                    value: _value,
                    interval: 5,
                    showTicks: false,
                    showLabels: false,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    activeColor: feedBackColor,
                    inactiveColor: Colors.red[100],
                    onChanged: (dynamic value) {
                      setState(() {
                        _value = value;
                        if (_value >= 0 && _value <= 10) {
                          feedBackColor = Colors.pinkAccent;
                          feedbackText = "we are sorry for your inconvenience";
                        }
                        if (_value >= 11 && _value <= 20) {
                          feedBackColor = Colors.yellowAccent;
                          feedbackText = "Hope we server you better next time";
                        }
                        if (_value >= 21 && _value <= 30) {
                          feedBackColor = Colors.greenAccent;
                          feedbackText = "We hope you come next time.";
                        }
                      });
                    }),
              ),
              Padding(
                  padding: EdgeInsets.all(80),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FifthPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pinkAccent,
                              onPrimary: Colors.white70,
                              elevation: 5),
                          child: Text('Next'),
                        ),
                      ],
                    ),
                  )),
            ]),
          )
        ],
      ),
    ));
  }
}

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  var feedbackText = "Could be better";
  var _value = 0.0;
  Color feedBackColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100),
            child: Container(
                child: Text(
              "How clean was the room upon your arrival?",
              style: TextStyle(
                  color: Color(0xffD5DEE5),
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal),
            )),
          ),
          Container(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Container(
                  child: Text(
                    feedbackText,
                    style: TextStyle(color: Color(0xffD5DEE5), fontSize: 16.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SfSlider(
                    min: 0,
                    max: 30,
                    value: _value,
                    interval: 5,
                    showTicks: false,
                    showLabels: false,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    activeColor: feedBackColor,
                    inactiveColor: Colors.red[100],
                    onChanged: (dynamic value) {
                      setState(() {
                        _value = value;
                        if (_value >= 0 && _value <= 10) {
                          feedBackColor = Colors.pinkAccent;
                          feedbackText = "we are sorry for your inconvenience";
                        }
                        if (_value >= 11 && _value <= 20) {
                          feedBackColor = Colors.yellowAccent;
                          feedbackText = "Hope we server you better next time";
                        }
                        if (_value >= 21 && _value <= 30) {
                          feedBackColor = Colors.greenAccent;
                          feedbackText = "We hope you come next time.";
                        }
                      });
                    }),
              ),
              Padding(
                  padding: EdgeInsets.all(80),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => thirdpage()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pinkAccent,
                              onPrimary: Colors.white70,
                              elevation: 5),
                          child: Text('Next'),
                        ),
                      ],
                    ),
                  )),
            ]),
          )
        ],
      ),
    ));
  }
}

//////////////////////////////////////// LAST PAGE //////////////////////////////////////

class thirdpage extends StatefulWidget {
  const thirdpage({Key? key}) : super(key: key);

  @override
  _thirdpageState createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100),
            child: Container(
                child: Text(
              "THANKYOU!!",
              style: TextStyle(
                  color: Color(0xffD5DEE5),
                  fontSize: 40.0,
                  fontWeight: FontWeight.normal),
            )),
          ),
          Padding(
              padding: EdgeInsets.all(80),
              child: Container(
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                          onPrimary: Colors.white70,
                          elevation: 5),
                      child: Text('Reset'),
                    ),
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
