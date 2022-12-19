import 'package:flutter/material.dart';
import 'package:layout/src/components/sections/search_header_component.dart';
import 'package:layout/src/page/mark/mark_args.dart';
import 'package:layout/src/page/mark/mark_bloc.dart';

class MarkPage extends StatelessWidget {
  const MarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as MarkArgs;

    return Scaffold(
      body: Column(
        children: [
          const SearchHeaderComponent(
            hintText: 'Busque por uma marca',
            text: 'Selecione a marca de veículo',
          ),
          Expanded(
            child: FutureBuilder(
              future: MarkBloc().getMarks(args.type),
              builder: (context, snapshot) {
                return MarkBloc().responseFuture(snapshot);
              },
            ),
          )
        ],
      ),
    );
  }
}
