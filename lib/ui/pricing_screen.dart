import 'package:flutter/material.dart';
import 'package:flutter_bwa_7day/theme/theme.dart';

class PricingScreen extends StatefulWidget {
  const PricingScreen({Key? key}) : super(key: key);

  @override
  _PricingScreenState createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          header(),
          SizedBox(height: 50),
          option(0, 'assets/pig_icon.png', 'Many Securty', 'support', '24/5'),
          SizedBox(height: 20),
          option(1, 'assets/papper_icon.png', 'Automation', 'we provide',
              'Invoice'),
          SizedBox(height: 20),
          option(
              2, 'assets/money_icon.png', 'Balance Report', 'can up to', '10k'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amber,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Upgrade Now',
                style: descrition,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/btn.png',
              width: 50,
            ),
            SizedBox(height: 20),
            Text(
              'Which one you wish \nto Upgrade?',
              style: title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget option(
      int? index, String? imageUrl, titleCard, description, subdicription) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index!;
        });
      },
      child: Container(
        width: 315,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          border: Border.all(
            color: selectedIndex == index ? Color(0xff6050E7) : Colors.grey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imageUrl!,
                width: 50,
              ),
              SizedBox(width: 15),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleCard!,
                      style: title.copyWith(fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          description!,
                          style: descrition,
                        ),
                        Text(
                          subdicription!,
                          style: descrition.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5343C2),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 21,
                  ),
                  child: selectedIndex == index
                      ? Image.asset(
                          'assets/ic_check.png',
                          width: 20,
                        )
                      : SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
