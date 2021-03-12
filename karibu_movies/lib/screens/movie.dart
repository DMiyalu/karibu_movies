import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  const Movie({Key key}) : super(key: key);

  Widget descriptionBox(BuildContext context, {Widget child, Color bkgColor}) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .89,
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bkgColor,
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/img5.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: size.height * .95,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Desciption Movie
                  descriptionBox(
                    context,
                    bkgColor: Color.fromRGBO(15, 15, 40, 1.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Title
                        Text(
                          'Interstellar',
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.left,
                        ),

                        // Date
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                          child: Text('1996-04-19',
                              style: Theme.of(context).textTheme.headline5),
                        ),

                        // Synopsis
                        Text(
                            'Lorem ipsum dolor sit amet consectutuer, Lorem ipsum dolor sit, Lorem ipsum dolor sit amet consectutuer..',
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                  ),

                  descriptionBox(
                    context,
                    bkgColor: Color.fromRGBO(250, 15, 15, 1.0),
                    child: Column(
                      children: <Widget>[
                        Text('Avec Morgan Freeman, Eddy Murphy, Eddie Michel.',
                            style: Theme.of(context).textTheme.headline5),
                      ],
                    ),
                  ),
                  // Button View
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
