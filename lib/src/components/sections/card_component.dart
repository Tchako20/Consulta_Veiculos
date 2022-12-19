import 'package:flutter/material.dart';
import 'package:layout/src/components/components_sections/box_card.dart';
import 'package:layout/src/page/mark/mark_args.dart';

class CardComponent extends StatelessWidget {
  final String type;
  final String nome;
  final IconData icon;
  const CardComponent(
      {super.key, required this.type, required this.nome, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/mark',
                      arguments: MarkArgs(type)),
                  child:  BoxCard(
                    boxContent: _AccountActions(
                      icon: Icon(
                        icon,
                        color: Colors.blue,
                      ),
                      text: nome,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AccountActions extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AccountActions({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
