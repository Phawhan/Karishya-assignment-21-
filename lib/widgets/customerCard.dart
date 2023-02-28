import 'package:flutter/material.dart';
import 'package:karishya/constants/constantVariables.dart';

// ignore: camel_case_types
class CustomerCard extends StatelessWidget {
  CustomerCard(
      {super.key,
      required this.customerName,
      required this.isChecked,
      required this.onChanged});

  bool isChecked = true;
  String? customerName = '';
  Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/customerprofile.png"),
            Column(
              children: [
                Text(customerName ?? ""),
                Text("Gachibouli"),
              ],
            ),
            Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              checkColor: checkBoxColor,
              value: isChecked,
              onChanged: onChanged,
              
            ),
          ],
        ));
  }
}
