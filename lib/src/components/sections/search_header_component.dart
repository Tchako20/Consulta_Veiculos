import 'package:flutter/material.dart';
import 'package:layout/src/themes/theme_colors.dart';

class SearchHeaderComponent extends StatelessWidget {
  const SearchHeaderComponent(
      {Key? key, required this.hintText, required this.text})
      : super(key: key);
  final String hintText;
  final String text;

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      top: 8,
                    ),
                    child: const Text(
                      'Consulta de veiculos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 330,
                height: 55,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none),
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 99, 98, 98),
                    ),
                    hintText: hintText,
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ],
      ),
    );
  }
}
