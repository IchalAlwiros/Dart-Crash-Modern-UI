import 'package:flutter/material.dart';
import 'package:flutter_bwa_7day/model/model.dart';
import 'package:flutter_bwa_7day/theme/theme.dart';

class SecondRandom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/page_cover.png',
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Text(
                    'Arrina La',
                    style: title,
                  ),
                  Text(
                    'Bali, Dekat Bandung',
                    style: descrition,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: title.copyWith(fontSize: 16),
                  ),
                  Text(
                    'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
                    style: descrition.copyWith(fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Booking Now',
                    style: title.copyWith(fontSize: 16),
                  ),
                  SizedBox(height: 15),
                  daySlider()
                ],
              )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNav(context),
    );
  }

  Widget daySlider() {
    List<SliderDay> sliderDay = [
      SliderDay(
        imageUrl: 'assets/day1.png',
      ),
      SliderDay(
        imageUrl: 'assets/day2.png',
      ),
      SliderDay(
        imageUrl: 'assets/day3.png',
      ),
      SliderDay(
        imageUrl: 'assets/day4.png',
      ),
    ];
    return Container(
      height: 200,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: sliderDay.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 200,
                child: Image.asset(
                  '${sliderDay[index].imageUrl}',
                  height: 100,
                  width: 80,
                ),
              ),
            ),
          ),
          // Image.asset('assets/day1.png', width: 80, height: 100,),
        ],
      ),
    );
  }

  Widget bottomNav(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(3.0, 6.0),
          blurRadius: 20,
          //spreadRadius: 1.0,
          color: Colors.grey,
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  '\$22,800',
                  style: title.copyWith(color: Color(0xff3F6DF6)),
                ),
                subtitle: Text(
                  '/night',
                  style: descrition,
                ),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        //isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (context) => Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 20,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 200,
                                child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(
                                        '\$22,800',
                                        style: title,
                                      ),
                                      subtitle: Text(
                                        '/night',
                                        style: descrition,
                                      ),
                                    );
                                  },
                                  itemCount: 20,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Coba Dulu'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    highlightColor: Colors.lightBlue.withOpacity(0.3),
                    splashColor: Colors.blueAccent.withOpacity(0.5),
                    child: Ink(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xff3F6DF6),
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
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

  Widget buildSheet(BuildContext context) => DraggableScrollableSheet(
      initialChildSize: 0.9,
      builder: (_, controller) => Container(
            //color: Colors.amber,
            child: Column(
              //controller:
              //  controller, //untuk menghilangkan batasan pada bottom navbar
              children: [
                FlutterLogo(size: 150),
                FlutterLogo(size: 150),
                FlutterLogo(size: 150),
                FlutterLogo(size: 150),
                FlutterLogo(size: 150),
                FlutterLogo(size: 150),
              ],
            ),
          ));
}
