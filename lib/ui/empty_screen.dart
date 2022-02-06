import 'package:flutter/material.dart';
import 'package:flutter_bwa_7day/theme/theme.dart';

class EmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/illustrationv1.png',
                width: 300,
              ),
            ),
            SizedBox(height: 20),
            Text('Success Order', style: title),
            SizedBox(height: 20),
            Text('We will delivery your packageas\n soon as possible',
                textAlign: TextAlign.center, style: descrition),
            SizedBox(height: 20),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    highlightColor: Colors.red.withOpacity(0.3),
                    splashColor: Colors.orangeAccent.withOpacity(0.5),
                    child: Ink(
                      height: 55,
                      width: MediaQuery.of(context).size.width - 200,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          'Done',
                          style: button.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
