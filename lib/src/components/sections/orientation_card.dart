import 'package:flutter/material.dart';
import '../components_sections/box_card.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pesquise os Veiculos desejados.',
                    overflow: TextOverflow.ellipsis),
                Text('Carros/motos/caminhões',
                    style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Navegue Entre.'),
                Text('Marcas.', style: Theme.of(context).textTheme.bodyLarge),
                Text('Modelos.', style: Theme.of(context).textTheme.bodyLarge),
                Text('Ano De Lançamentos.',
                    style: Theme.of(context).textTheme.bodyLarge),
                Text('Pesquisa.', style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text('Veiculos a partir de: \$15.000,00'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Fique a vontade!',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
    
  }
}
