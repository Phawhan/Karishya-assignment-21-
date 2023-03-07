import 'package:flutter/material.dart';

class CauroselCard extends StatefulWidget {
  const CauroselCard({Key? key}) : super(key: key);

  @override
  State<CauroselCard> createState() => _CauroselCardState();
}

class _CauroselCardState extends State<CauroselCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: const Color.fromARGB(255, 246, 242, 242),
        ),
        borderRadius: const BorderRadius.all(Radius.elliptical(20, 20)),
        color: const Color.fromARGB(255, 105, 22, 98),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: const Text(
              "Notifications",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 246, 245, 243)),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset("assets/images/customer.png"),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              " Rohit Mishra",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 246, 245, 243)),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Kondapur",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          Color.fromARGB(255, 246, 245, 243)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 99, 235, 103))),
                  child: const Text(
                    "Accept",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
                Icon(
                  Icons.business_center,
                  color: Colors.white,
                ),
                Text(" Wants to do Satyanarayana Katha",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 246, 245, 243))),
              ]),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      Text("16 April 2022",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 246, 245, 243)))
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.schedule,
                        color: Colors.white,
                      ),
                      Text("9AM to 12PM",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 246, 245, 243)))
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
