import 'package:flutter/material.dart';
import 'package:karishya/widgets/bottomNavigation.dart';
import 'package:karishya/widgets/topNavigation.dart';
import 'package:karishya/widgets/customerCard.dart';
import 'package:karishya/constants/constantVariables.dart';

class CreateCustomer extends StatefulWidget {
  const CreateCustomer({super.key});

  @override
  State<CreateCustomer> createState() => _CreateCustomerState();
}

class _CreateCustomerState extends State<CreateCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(title: "Existing Customr"),
      body: CustomerList(),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}

class CustomerList extends StatefulWidget {
  final Function()? onAdd;
  const CustomerList({super.key, this.onAdd});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  checkBoxTap(val, index) {
    setState(() {
      listItems[index][1] = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/gopuram.png"),
            // fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color.fromARGB(255, 247, 240, 177)],
          )),
      child: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: CustomerCard(
                customerName: listItems[index][0],
                isChecked: listItems[index][1],
                onChanged: (value) => checkBoxTap(value, index)),
          );
        },
      ),
    );
  }
}
