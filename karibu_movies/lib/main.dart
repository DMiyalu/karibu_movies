import 'package:flutter/material.dart';
import 'package:karibu_movies/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Define the default ColorTheme.
        accentColor: Color.fromRGBO(1, 0, 74, 1.0),
        primaryColorLight: Color.fromRGBO(19, 85, 255, 1.0),
        primaryColor: Color.fromRGBO(3, 5, 52, 1.0),
        scaffoldBackgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
        canvasColor: Colors.white,
        fontFamily: 'Roboto',

        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,

        // Define the default font family.
        textTheme: TextTheme(
          subtitle1: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
          headline6: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20.0,
            color: Colors.white,
          ),
          headline5: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14.0,
            color: Colors.white,
          ),
          button: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
      },
    );
  }
}
