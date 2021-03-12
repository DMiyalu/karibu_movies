import 'package:flutter/material.dart';
import 'package:karibu_movies/mocks/movies.dart';
import 'package:karibu_movies/widgets/button_view_movie.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:karibu_movies/widgets/movie_card.dart';

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
        backgroundColor: Color.fromRGBO(15, 15, 40, 1.0),
        centerTitle: true,
        title: Text(
          "Karibu-Movies",
          style: Theme.of(context).textTheme.headline6,
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          labelColor: Colors.white,
          labelStyle: Theme.of(context).textTheme.bodyText1,
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            // Backgound-Image
            image: AssetImage(
              'assets/images/bkg.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            ListView(
              scrollDirection: Axis.horizontal,
              children: listMovies
                  .map(
                    (movie) => movieCard(
                      context,
                      title: movie['title'],
                      actor: movie['actor'],
                      description: movie['description'],
                      image: movie['image'],
                    ),
                  )
                  .toList(),
            ),
            // caroussel card
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: size.height,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: true,
                  reverse: false,
                  pauseAutoPlayInFiniteScroll: true,
                  pauseAutoPlayOnManualNavigate: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: listMovies
                    .map(
                      (movie) => movieCard(
                        context,
                        title: movie['title'],
                        actor: movie['actor'],
                        description: movie['description'],
                        image: movie['image'],
                      ),
                    )
                    .toList(),
              ),
            ),

            // caroussel card
            Text('Drames'),
            Text('Populaires'),
            Text('Actions'),
            Text('Drames'),
          ],
        ),
      ),
    );
  }
}
