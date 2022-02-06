import 'package:flutter/material.dart';
import 'package:flutter_bwa_7day/theme/theme.dart';

class SecondGetStarted extends StatelessWidget {
  const SecondGetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Health First.',
              style: title,
            ),
            SizedBox(height: 16),
            Text(
                'Exercise together with our best \ncommunity fit in the world'),
            SizedBox(height: 16),
            Center(
              child: Image.asset(
                'assets/gallery.png',
              ),
            ),
            SizedBox(height: 20),
            buttonInk(context),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Terms & Conditions',
                style: descrition.copyWith(fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonInk(BuildContext context) {
    return ClipRRect(
      child: Material(
        child: InkWell(
          onTap: () {},
          highlightColor: Colors.greenAccent.withOpacity(0.3),
          splashColor: Colors.green.withOpacity(0.5),
          child: Ink(
            height: 55,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xffAFEA0D),
            ),
            child: Center(
              child: Text(
                'Save to Wishlist',
                style: button,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
