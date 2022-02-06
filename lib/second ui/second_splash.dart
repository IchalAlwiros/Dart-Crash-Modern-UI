import 'package:flutter/material.dart';

class SecondSplahs extends StatelessWidget {
  const SecondSplahs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/splash.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            alignment:Alignment.topCenter ,
            child: Image.asset('assets/housequ.png', width: 200,))
        ],
      ),
    );
  }
}
