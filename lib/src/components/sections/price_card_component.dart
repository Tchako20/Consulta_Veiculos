import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceCardComponent extends StatelessWidget {
  const PriceCardComponent(
      {Key? key,
      required this.valor,
      required this.marca,
      required this.modelo,
      required this.ano,
      required this.fipe,
      required this.mes,
      required this.combustivel,
      required this.sigla})
      : super(key: key);

  final String valor;
  final String marca;
  final String modelo;
  final int ano;
  final String fipe;
  final String mes;
  final String combustivel;
  final String sigla;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: Card(
        color: Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: 350,
          height: 350,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      color: Colors.black,
                      child: const Icon(
                        CupertinoIcons.car_detailed,
                        size: 32,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                        modelo,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 16),
                child: const Divider(
                  height: 8,
                  color: Colors.red,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.only(left: 8, right: 4),
                      child: const Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                        'Marca:',
                      ),
                    ),
                  ),
                  Text(
                    marca,
                    style: const TextStyle(
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 32, right: 4),
                    child: const Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      'Ano:',
                    ),
                  ),
                  Text(
                    '$ano',
                    style: const TextStyle(
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8, right: 4),
                    child: const Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                      'Codigo FIPE:',
                    ),
                  ),
                  Text(
                    fipe,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.only(left: 8, right: 4),
                      child: const Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                        'Combustível:',
                      ),
                    ),
                  ),
                  Text(
                    '$combustivel - $sigla',
                    style: const TextStyle(
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16, bottom: 16),
                child: const Divider(
                  height: 8,
                  color: Colors.red,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 8, right: 4),
                    child: const Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                      'Mês Referência:',
                    ),
                  ),
                  Text(
                    mes,
                    style: const TextStyle(
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16, bottom: 16),
                child: const Divider(
                  height: 8,
                  color: Colors.red,
                ),
              ),
              Text(
                valor,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    overflow: TextOverflow.ellipsis),
              )
            ],
          ),
        ),
      ),
    );
  }
}
