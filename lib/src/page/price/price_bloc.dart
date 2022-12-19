import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:layout/src/components/sections/price_card_component.dart';
import 'package:http/http.dart'as https;

class PriceBloc {
  Future<Widget> getPrice(
      String type, String mark, String model, String year) async {
    var url = Uri.https('parallelum.com.br',
        'fipe/api/v1/$type/marcas/$mark/modelos/$model/anos/$year');
    var response = await https.get(url);
    var price = jsonDecode(response.body);
    return PriceCardComponent(
        valor: price['Valor'],
        marca: price['Marca'],
        modelo: price['Modelo'],
        ano: price['AnoModelo'],
        fipe: price['CodigoFipe'],
        mes: price['MesReferencia'],
        combustivel: price['Combustivel'],
        sigla: price['SiglaCombustivel']);
  }

  Widget responseFuture(AsyncSnapshot snapshot) {
    if (snapshot.hasData) {
      return Center(
        child: snapshot.data,
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
