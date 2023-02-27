import 'package:flutter/material.dart';
import 'package:karishya/constants/constantStyle.dart';
import 'package:karishya/constants/constantVariables.dart';
import 'package:karishya/screens/existing_customer_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  submit() {}

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 232),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/gopuram.png"),
            alignment: Alignment.bottomRight,
          )),
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Sign In",
                      style: headingStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      signInMsg,
                      style: messageStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter mobile number.",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    height: 55,
                    color: const Color.fromARGB(255, 89, 14, 108),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ExistingCustomer()));
                      },
                      style: ButtonStyle(),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "Don’t have an account? SIGN UP",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 74, 6, 87),
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
