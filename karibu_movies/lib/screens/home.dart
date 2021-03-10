import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        centerTitle: true,
        title: Text(
          "Karibu-Movies",
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.white),
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          labelColor: Colors.white,
          tabs: <Widget>[
            Tab(
              child: Text('Populaires'),
            ),
            Tab(
              child: Text('Actions'),
            ),
            Tab(
              child: Text('Drames'),
            ),
            Tab(
              child: Text('Drames'),
            ),
            Tab(
              child: Text('Drames'),
            ),
            Tab(
              child: Text('Drames'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text('Populaires'),
          Text('Actions'),
          Text('Drames'),
          Text('Populaires'),
          Text('Actions'),
          Text('Drames'),
        ],
      ),
    );
  }
}
