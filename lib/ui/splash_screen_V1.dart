import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/logo_7day.png',
              width: 140,
            ),
          ),
          SizedBox(height: 130,),
          Text(
            'ALWIROS',
            style: GoogleFonts.dmSerifDisplay(
              color: Colors.white,
              fontSize: 32,
            ),
          )
        ],
      ),
    );
  }
}
