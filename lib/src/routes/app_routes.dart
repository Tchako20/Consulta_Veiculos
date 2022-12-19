
import 'package:layout/src/page/home/home_page.dart';
import 'package:layout/src/page/mark/mark_page.dart';
import 'package:layout/src/page/model/model_page.dart';
import 'package:layout/src/page/price/price_page.dart';
import 'package:layout/src/page/year/year_page.dart';

class AppRoutes {
  final routes = {
    '/': (context) => HomePage(),
    '/mark': (_) => MarkPage(),
    '/model': (_) => ModelPage(),
    '/year': (_) => YearPage(),
    '/price': (_) => PricePage(),
  };
}