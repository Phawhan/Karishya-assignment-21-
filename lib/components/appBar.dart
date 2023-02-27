import 'package:flutter/material.dart';

class Apnav extends StatelessWidget {
  const Apnav({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('fefrerr'),
      leading: Icon(Icons.arrow_back_ios),
      automaticallyImplyLeading: false,
      actions: <Widget>[
        Icon(Icons.notifications_on_outlined),
        Icon(Icons.search)
      ],
    );
  }
}
