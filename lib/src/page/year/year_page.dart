import 'package:flutter/material.dart';
import 'package:layout/src/components/sections/search_header_component.dart';
import 'package:layout/src/page/year/year_args.dart';
import 'package:layout/src/page/year/year_bloc.dart';

class YearPage extends StatelessWidget {
  const YearPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as YearArgs;

    return Scaffold(
      body: Column(
        children: [
          const SearchHeaderComponent(hintText: 'Busque por uma ano', text: 'Selecione o ano de veículo'),
          Expanded(
            child: FutureBuilder(
              future: YearBloc().getYears(args.type, args.mark, args.model),
              builder: (context, snapshot) {
                return YearBloc().responseFuture(snapshot);
              },
            ),
          )
        ],
      ),
    );
  }
}
