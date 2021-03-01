import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('FirstPage', style: Theme.of(context).textTheme.headline4),
            RaisedButton(
              child: Text('Go to Second Page'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(data: 'Hello there from the first page!'),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;
  SecondPage({
    Key key,
    @required this.data,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Welcome to SecondPage',
                style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),
    );
  }
}
