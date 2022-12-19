import 'package:flutter/material.dart';
import 'package:layout/src/themes/theme_colors.dart';

class PriceHeaderComponent extends StatelessWidget {
  const PriceHeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColors.headerGradient),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
           const SizedBox(
            height: 70,
          ),
            const Center(
            child:  Text(
              'Seu Veiculo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
           const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
