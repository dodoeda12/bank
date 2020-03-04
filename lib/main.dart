import 'package:flutter/material.dart';

void main() {
  runApp(
    new Center(
      child: new MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Number Count",
      theme: new ThemeData(primarySwatch: Colors.blueGrey),
      home: new Invest(),
    );
  }
}

class Invest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Invest();
  }
}

class _Invest extends State<Invest> {
  int _n = 10000;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Investing")),
      body: new Container(
        child: new Center(
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: Text("Invest Avon"),
                  onPressed: Avon,
                ),
                new Text('$_n', style: new TextStyle(fontSize: 60.0)),
                new RaisedButton(
                  child: Text("Invest Byul"),
                  onPressed: Byul,
                ),
              ]),
        ),
      ),
    );
  }

  void Avon() {
    setState(() {
      _n = _n - 5000;
    });
  }

  void Byul() {
    setState(() {
      _n = _n + 10000;
    });
  }
}
