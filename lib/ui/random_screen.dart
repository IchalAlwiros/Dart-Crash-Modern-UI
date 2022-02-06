import 'package:flutter/material.dart';
import 'package:flutter_bwa_7day/theme/theme.dart';
import 'package:flutter_bwa_7day/widget/card_list.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 26, left: 30, right: 30),
          child: Column(
            children: [
              Center(
                child: Text(
                  'My Shopping Cart',
                  style: title,
                ),
              ),
              SizedBox(height: 30),
              CardList(
                  imageUrl: 'assets/burger.png',
                  iconOne: 'assets/min.png',
                  iconTwo: 'assets/plus.png',
                  food: 'Burger Malleta',
                  place: 'McTheone',
                  pricing: '\$90.00'),
              SizedBox(height: 20),
              CardList(
                  imageUrl: 'assets/mojito.png',
                  iconOne: 'assets/min.png',
                  iconTwo: 'assets/plus.png',
                  food: 'Mojito Orange',
                  place: 'The Bar',
                  pricing: '\$510.00'),
              SizedBox(height: 26),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 165,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Information',
                        style: title.copyWith(fontSize: 16),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'sub total',
                                style: descrition,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'dilevery',
                                style: descrition,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'total',
                                style: descrition,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$90.00',
                                style: descrition,
                              ),
                              SizedBox(height: 10),
                              Text(
                                '\$90.00',
                                style: descrition,
                              ),
                              SizedBox(height: 10),
                              Text(
                                '\$90.00',
                                style: descrition,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 200),
              buttonInkCheckout(context),
              SizedBox(height: 20),
              buttonInkCheckout2(context),
              // ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(shape:), child: Text('data'))
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonInkCheckout(BuildContext context) {
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
                color: Colors.amber, borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                'Checkout Now',
                style: button.copyWith(color: Colors.black, fontWeight: FontWeight.w300,),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonInkCheckout2(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        child: InkWell(
          onTap: () {},
          highlightColor: Colors.grey.withOpacity(0.3),
          splashColor: Colors.black87.withOpacity(0.5),
          child: Ink(
            height: 55,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                'Save to Wishlist',
                style: button.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
