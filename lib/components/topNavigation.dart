import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
final Widget TopBar = Padding(
    padding: const EdgeInsets.only(top: 40),
    child: Container(
      height: 55,
      color: const Color.fromARGB(255, 55, 1, 52),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: null,
            color: Colors.white,
            iconSize: 25,
          ),
          Text(
            "Schedule a Puja",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: null,
            color: Colors.white,
            iconSize: 25,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            color: Colors.white,
            iconSize: 25,
          ),
        ],
      ),
    ));
