import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      // la: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.book_online,
            color: Colors.black,
          ),
          label: "Booking",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money, color: Colors.black),
          label: "Earning",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, color: Colors.black),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people, color: Colors.black),
          label: "Customers",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.create, color: Colors.black),
          label: "Create Puja",
        ),
      ],
    );
  }
}
