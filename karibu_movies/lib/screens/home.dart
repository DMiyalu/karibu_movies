import 'package:flutter/material.dart';
import 'package:karibu_movies/mocks/movies.dart';
import 'package:karibu_movies/widgets/button_view_movie.dart';

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
    Size size = MediaQuery.of(context).size;
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
              child: Text('Populaires'),
            ),
            Tab(
              child: Text('Actions'),
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
          ListView(
            scrollDirection: Axis.horizontal,
            children: listMovies
                .map(
                  (movie) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'INTERSTELLAR',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Container(
                          height: 500,
                          width: 350,
                          margin: EdgeInsets.symmetric(vertical: 30),
                          child: Image(
                            image: AssetImage(
                              'assets/images/img5.jpg',
                            ),
                            height: 320,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Short description, in 80 characters.",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: buttonViewMoview(context),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
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
