import 'package:flutter/material.dart';
import 'package:layout/src/components/sections/price_header_component.dart';
import 'package:layout/src/page/price/price_args.dart';
import 'package:layout/src/page/price/price_bloc.dart';

class PricePage extends StatelessWidget {
  static const routeName = '/price';
  const PricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PriceArgs;

    return Scaffold(
      body: Column(
        children: [
          const PriceHeaderComponent(),
          FutureBuilder(
            future: PriceBloc().getPrice(args.type, args.mark, args.model, args.year),
            builder: (context, snapshot) {
              return PriceBloc().responseFuture(snapshot);
            },
          ),
        ],
      ),
    );
  }
}