import 'package:flutter/material.dart';

void showToastMessage(BuildContext context) {
  final Scaffold = ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text("Sending Message"),
  ));
}
