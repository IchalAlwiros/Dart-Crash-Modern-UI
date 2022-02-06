import 'package:flutter/material.dart';
import 'package:flutter_bwa_7day/theme/theme.dart';

class CardList extends StatelessWidget {
  String? imageUrl, iconOne, amount, iconTwo, food, place, pricing;
  CardList(
      {required this.imageUrl,
      required this.iconOne,
      required this.iconTwo,
      required this.food,
      required this.place,
      required this.pricing});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  imageUrl!,
                  //'assets/burger.png',
                  width: 70,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      iconOne!,
                      //'assets/min.png',
                      width: 20,
                    ),
                    SizedBox(width: 10),
                    Text('2'),
                    SizedBox(width: 10),
                    Image.asset(
                      iconTwo!,
                      //'assets/plus.png',
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food!,
                    // 'Burger Malleta',
                    style: descrition,
                  ),
                  Text(
                    place!,
                    style: descrition,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                pricing!,
              ),
            )
          ],
        ),
      ),
    );
  }
}
