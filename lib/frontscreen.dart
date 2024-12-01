import 'dart:math';

import 'package:flutter/material.dart';

class Frontscreen extends StatefulWidget {
  const Frontscreen({super.key});

  @override
  State<Frontscreen> createState() => _FrontscreenState();
}

class _FrontscreenState extends State<Frontscreen> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.yellow;
  // BorderRadius _borderRadius = BorderRadius.circular(20);

  void changecontainer() {
    final random = Random();
    setState(() {
      _width = random.nextInt(500).toDouble();
      _height = random.nextInt(600).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(300), random.nextInt(300), random.nextInt(300), 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: changecontainer,
                child: const Text("Click here to change container")),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedContainer(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                    color: _color, borderRadius: BorderRadius.circular(25)),
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              ),
            )
          ],
        ),
      ),
    );
  }
}
