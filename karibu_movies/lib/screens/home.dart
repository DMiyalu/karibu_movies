import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Home Screen',
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: Theme.of(context).primaryColorLight),
      ),
    );
  }
}
