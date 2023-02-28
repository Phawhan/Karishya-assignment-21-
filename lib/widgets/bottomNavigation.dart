import 'package:flutter/material.dart';
import 'package:karishya/constants/constantVariables.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.book_online, color: iconColor),
          label: "Booking",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money, color: iconColor),
          label: "Earning",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, color: iconColor),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people, color: iconColor),
          label: "Customers",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.create, color: iconColor),
          label: "Create Puja",
        ),
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
    );
  }
}
