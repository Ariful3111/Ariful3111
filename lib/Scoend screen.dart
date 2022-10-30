import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
class Second_screen extends StatelessWidget {
  const Second_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,//true can hide app bar back button
        title: Center(child: Text("Second-screen")),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Lottie.asset(("image/124968-halloginween.json"),),

              ],
            ),
            Column(
              children: [

              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.pop(context, '/first-screen');
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
