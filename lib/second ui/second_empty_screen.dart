import 'package:flutter/material.dart';

class SecondEmpty extends StatelessWidget {
  const SecondEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/illustration.png', width: 300,),
            ),
            
          ],
        ),
      ),
    );
  }
}
