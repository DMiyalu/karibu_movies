import 'package:flutter/material.dart';
import 'package:karibu_movies/widgets/button_view_movie.dart';

Widget movieCard(BuildContext context,
    {String title,
    String actor,
    String description,
    String image,
    Function onTap}) {
  Size size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.all(10),
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // Title Movie
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),

        // Image Movie
        InkWell(
          onTap: onTap,
          child: Container(
            height: 500,
            width: 350,
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Image(
              image: AssetImage(
                image,
              ),
              height: 320,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Author
        Text(
          "De $actor",
          style: Theme.of(context).textTheme.subtitle2,
        ),

        // Short Description
        Flexible(
          child: Container(
            width: size.width * .9,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
        ),

        // Duration (Red Button)
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: buttonViewMoview(context),
        ),
      ],
    ),
  );
}
