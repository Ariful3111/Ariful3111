import 'package:flutter/material.dart';
class Animate extends StatelessWidget {
  const Animate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(tag: '1', child: Image.asset('image/img.png'),),
        ],
      ),
    );
  }
}

