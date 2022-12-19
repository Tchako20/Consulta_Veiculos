import 'package:layout/src/page/model/model_args.dart';
import 'package:layout/src/page/price/price_args.dart';
import 'package:layout/src/page/year/year_args.dart';

class MainListComponentBloc {
  setupNextList(
    String type,
    String route,
    mark,
    model,
    year,
    codigo,
  ) {
    switch (route) {
      case '/model':
        mark = codigo.toString();
        return ModelArgs(type, mark);

      case '/year':
        model = codigo.toString();
        return YearArgs(type, mark, model);

      case '/price':
        year = codigo.toString();
        return PriceArgs(type, mark, model, year);
    }
  }
}