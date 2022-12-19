import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout/src/components/sections/card_component.dart';
import 'package:layout/src/components/sections/main_header.dart';
import 'package:layout/src/components/sections/orientation_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const MainHeader(),
          const RecentActivity(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
             CardComponent(
                  type: 'Motos', icon: Icons.motorcycle, nome: 'Motos'),
             CardComponent(
                  type: 'Carros',
                  icon: CupertinoIcons.car_detailed,
                  nome: 'Carros'),
             CardComponent(
                  type: 'Caminhão', icon: Icons.fire_truck, nome: 'Caminhão'),
            ],
          ),
        ],
      ),
    );
  }
}
