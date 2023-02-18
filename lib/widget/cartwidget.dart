import 'package:flutter/material.dart';

cartWidjet(
  String name,
  String img,
) {
  return Card(
    elevation: 5,
    margin: EdgeInsets.all(10.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Container(
          height: 75.0,
          width: 150,
          child: Image(image: NetworkImage('$img'))
          /*  decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: NetworkImage('$img'), fit: BoxFit.fill))*/
          ,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 15),
        )
      ],
    ),
  );
}

cardWidjet(Icon x, String y) {
  return Card(
      elevation: 5,
      margin: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
          decoration: BoxDecoration(
              color: Color(0xffc1f100),
              borderRadius: BorderRadius.circular(20)),
          height: 65.0,
          width: 65,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                x,
                Text(y, style: TextStyle(fontSize: 12, color: Colors.black))
              ],
            ),
          )));
}
