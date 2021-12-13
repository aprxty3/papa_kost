import 'package:flutter/material.dart';
import 'package:papa_kost/theme.dart';

class CallUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 211.0),
          child: Column(
            children: [
              Image.asset(
                'assets/pic.png',
                width: 150,
              ),
              SizedBox(
                height: 65,
              ),
              Text(
                'Amanda Shayna',
                style: Usercall,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '12 : 30 minutes',
                style: Usercallminute,
              ),
              SizedBox(
                height: 60,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  'assets/btn_close.png',
                  width: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
