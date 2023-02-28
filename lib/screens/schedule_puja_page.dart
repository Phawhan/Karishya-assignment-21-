import 'package:flutter/material.dart';
import 'package:karishya/constants/constantVariables.dart';
import 'package:karishya/widgets/bottomNavigation.dart';
import 'package:karishya/screens/existing_customers_page.dart';
import 'package:karishya/widgets/topNavigation.dart';

class SchedulePuja extends StatelessWidget {
  const SchedulePuja({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: "Schedule Puja",
      ),
      body: const SelectCustomerType(),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}

class SelectCustomerType extends StatefulWidget {
  const SelectCustomerType({super.key});

  @override
  State<SelectCustomerType> createState() => _SelectCustomerTypeState();
}

class _SelectCustomerTypeState extends State<SelectCustomerType> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/gopuram.png"),
        alignment: Alignment.bottomCenter,
        ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end:Alignment.bottomCenter,
        colors: [Colors.white,Color.fromARGB(255, 247, 240, 177)], )
      ),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: borderColor),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset("assets/images/customer.png"),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "For New Customer",
                  style: TextStyle(
                      color: textColor,
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
                    border: Border.all(color: borderColor),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
                child: Row(children: [
                  Image.asset("assets/images/customer.png"),
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "For Existing Customer",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ))
                ])))
      ]),
    );
  }
}
