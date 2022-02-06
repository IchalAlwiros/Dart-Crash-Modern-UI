import 'package:flutter/material.dart';
import 'package:flutter_bwa_7day/theme/theme.dart';

class SecondSignIn extends StatefulWidget {
  const SecondSignIn({Key? key}) : super(key: key);

  @override
  _SecondSignInState createState() => _SecondSignInState();
}

class _SecondSignInState extends State<SecondSignIn> {
  TextEditingController emailAccount = TextEditingController();
  TextEditingController passwordAccount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/papper_icon.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Text('Email Address'),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: descrition,
              controller: emailAccount,
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Email',
                hintStyle: descrition,
              ),
            ),
            SizedBox(height: 20),
            Text('Password'),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              style: descrition,
              controller: passwordAccount,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Password',
                hintStyle: descrition,
              ),
            ),
            SizedBox(height: 50),
            buttonInkLogin(context),
            SizedBox(height: 20),
            buttonInkCreate(context)
          ],
        ),
      ),
    );
  }

  Widget buttonInkLogin(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        child: InkWell(
          onTap: () {},
          highlightColor: Colors.red.withOpacity(0.3),
          splashColor: Colors.white.withOpacity(0.5),
          child: Ink(
            height: 55,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xff5468FF), borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                'Login',
                style: button.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonInkCreate(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        child: InkWell(
          onTap: () {},
          highlightColor: Colors.red.withOpacity(0.3),
          splashColor: Colors.white.withOpacity(0.5),
          child: Ink(
            height: 55,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1), borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                'Create New Account',
                style: button.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
