import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'caurosel_card.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: SafeArea(
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.white,
                      Color.fromARGB(255, 243, 234, 169),
                    ],
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/back2.png"),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              CarouselSlider(
                items: const [
                  CauroselCard(),
                  CauroselCard(),
                  CauroselCard(),
                ],
                options: CarouselOptions(
                    autoPlay: true,
                    height: 250,
                    viewportFraction: 1.0,
                    // enlargeCenterPage: false,
                    scrollDirection: axisDirectionToAxis(AxisDirection.right)),
              ),
            ],
          ),
        ));
  }
}
