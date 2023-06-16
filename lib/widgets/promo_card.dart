// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget promoCard(image, text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: promoCardImage(image, text),
        ),
        Expanded(
          flex: 3,
          child: promoCardText(),
        ),
      ],
    ),
  );
}

Widget promoCardImage(image, text) {
  return Container(
    margin: EdgeInsetsDirectional.only(bottom: 20),
    height: 275,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(4, 5),
        ),
      ],
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: [.1, .9],
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2),
          ],
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 20,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget promoCardText() {
  return Container(
    padding: EdgeInsets.all(15),
    height: 200,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(3, 3),
        ),
      ],
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      color: Colors.grey.shade50,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kappa Velour',
          style: TextStyle(
              color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Bucket',
          style: TextStyle(
              color: Colors.black38, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '\$5500',
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '#Cotton #Polyster',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          '#Branded Design',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}
