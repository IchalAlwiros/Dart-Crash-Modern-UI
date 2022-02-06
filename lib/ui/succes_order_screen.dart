import 'package:flutter/material.dart';
import 'package:flutter_bwa_7day/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccesOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/illustration.png',
              width: 300,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Boost Profit!',
            style: title.copyWith(color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'Our tools are helping business \nto grow much faster',
            textAlign: TextAlign.center,
            style: descrition
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.purple[200],
              fixedSize: Size(60, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: ImageIcon(
              AssetImage('assets/u_rocket.png'),
            ),
          ),
        ],
      ),
    );
  }
}
