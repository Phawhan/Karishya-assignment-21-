import 'package:flutter/material.dart';
import 'package:karishya/components/bottomNavigation.dart';
import 'package:karishya/screens/create_customer_page.dart';
import 'package:karishya/components/topNavigation.dart';


import '../components/appBar.dart';

class ExistingCustomer extends StatelessWidget {
  ExistingCustomer({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: PreferredSizeWidget(
        
      ),
      body: ExistingCustomers(),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

class ExistingCustomers extends StatefulWidget {
  const ExistingCustomers({super.key});

  @override
  State<ExistingCustomers> createState() => _ExistingCustomerState();
}

class _ExistingCustomerState extends State<ExistingCustomers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/gopuram.png"),
      )),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset("assets/images/customer.png"),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "For New Customer",
                  style: TextStyle(
                      color: Color.fromARGB(255, 74, 4, 76),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateCustomer()));
            },
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
                child: Row(children: [
                  Image.asset("assets/images/customer.png"),
                  const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "For Existing Customer",
                        style: TextStyle(
                            color: Color.fromARGB(255, 74, 4, 76),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ))
                ])))
      ]),
    );
  }
}
