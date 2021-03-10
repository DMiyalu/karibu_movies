import 'package:flutter/material.dart';

Widget buttonViewMoview(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width * 0.6,
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.red,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.calendar_today,
          color: Colors.white,
          size: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            "4h 30 minutes",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Icon(
          Icons.arrow_drop_down,
          color: Colors.white,
          size: 20,
        ),
      ],
    ),
  );
}
