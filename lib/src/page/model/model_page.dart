import 'package:flutter/material.dart';
import 'package:layout/src/components/sections/search_header_component.dart';
import 'package:layout/src/page/model/model_args.dart';
import 'package:layout/src/page/model/model_bloc.dart';

class ModelPage extends StatelessWidget {
  const ModelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ModelArgs;

    return Scaffold(
      body: Column(
        children: [
          const SearchHeaderComponent(
              hintText: 'Busque por um modelo',
              text: 'Selecione o modelo de veículo'),
          Expanded(
            child: FutureBuilder(
              future: ModelBloc().getModels(args.type, args.mark),
              builder: (context, snapshot) {
                return ModelBloc().responseFuture(snapshot);
              },
            ),
          )
        ],
      ),
    );
  }
}
