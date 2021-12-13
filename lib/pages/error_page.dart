import 'package:flutter/material.dart';
import 'package:papa_kost/pages/home_page.dart';
import 'package:papa_kost/theme.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 214.0),
            child: Column(children: [
              Image.asset(
                'assets/404.png',
                width: 300,
                height: 86,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Where are you going?',
                style: ErrorNot1,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Seems like the page that you were \nrequested is already gone',
                textAlign: TextAlign.center,
                style: ErrorNot2,
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homepage()),
                  );
                },
                child: Image.asset(
                  'assets/button_backhome.png',
                  width: 210,
                  height: 50,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
