import 'package:intl/intl.dart';

void main() {
  List products = [
    "2020-01-26 00:00:00.000",
    "2022-01-25 00:00:00.000",
    "2022-01-20 00:00:00.000",
    "2022-01-13 00:00:00.000",
    "2022-01-10 00:00:00.000"
    "2021-12-25 00:00:00.000",
    "2021-12-30 00:00:00.000"
  ];
  List<DateTime> newProducts = [];
  DateFormat format = DateFormat("yyyy-MM-dd");

  for (int i = 0; i < products.length; i++) {
    newProducts.add(format.parse(products[i]));
  }
  newProducts.sort((a, b) => a.compareTo(b));
  print(newProducts);

  // for (int i = 0; i < products.length; i++) {
  //   print(' data terbaru ${newProducts[i]}');
  // }

  // products.sort((a, b) {
  //   print(a.compareTo(b));
  //   return a.compareTo(b);
  // });

  // products.sort((a, b) => a.compareTo(b));
}
