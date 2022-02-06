import 'package:flutter/material.dart';
import 'package:flutter_bwa_7day/second%20ui/second_empty_screen.dart';
import 'package:flutter_bwa_7day/second%20ui/second_getstarted.dart';
import 'package:flutter_bwa_7day/second%20ui/second_random.dart';
import 'package:flutter_bwa_7day/second%20ui/second_signin.dart';
import 'package:flutter_bwa_7day/second%20ui/second_splash.dart';
import 'package:flutter_bwa_7day/ui/empty_screen.dart';
import 'package:flutter_bwa_7day/ui/get_started_screen.dart';
import 'package:flutter_bwa_7day/ui/pricing_screen.dart';
import 'package:flutter_bwa_7day/ui/random_screen.dart';
import 'package:flutter_bwa_7day/ui/second_random.dart';
import 'package:flutter_bwa_7day/ui/signin_screen.dart';
import 'package:flutter_bwa_7day/ui/splash_screen_V1.dart';
import 'package:flutter_bwa_7day/ui/succes_order_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      SecondRandom()
      //SecondSignIn(),
      //SecondGetStarted(),
      // SecondSplahs()
      //RandomScreen(),
      //PricingScreen(),
      //EmptyScreen()
      //SuccesOrder()
      //SignInScreen() 
      //GetStartend(), 
      //SplashScreen(),
    );
  }
}
