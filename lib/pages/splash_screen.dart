import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return SafeArea(
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Header(),
        ],
      ),
    );
  }
}
