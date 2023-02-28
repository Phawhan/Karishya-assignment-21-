import 'package:flutter/material.dart';
import 'package:karishya/constants/constantVariables.dart';

// ignore: must_be_immutable
class TopBar extends StatelessWidget implements PreferredSizeWidget {
  String title;

  TopBar({
    super.key,
    required this.title,
  });

  static get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor:widgetColor,
        toolbarHeight: 100,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: const Icon(Icons.arrow_back_ios),
        automaticallyImplyLeading: false,
        actions: const <Widget>[
          Icon(Icons.notifications_on_outlined),
          Icon(Icons.search)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
