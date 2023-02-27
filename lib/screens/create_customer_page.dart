import 'package:flutter/material.dart';
import 'package:karishya/components/bottomNavigation.dart';

class CreateCustomer extends StatefulWidget {
  const CreateCustomer({super.key});

  @override
  State<CreateCustomer> createState() => _CreateCustomerState();
}

class _CreateCustomerState extends State<CreateCustomer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    
    bottomNavigationBar: BottomNavigator(),

    );
  }
}