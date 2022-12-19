import 'dart:convert';
import 'package:http/http.dart' as https;
import 'package:flutter/material.dart';
import 'package:layout/src/components/sections/main_list_component.dart';

class YearBloc{
  Future<Widget> getYears(String type, String mark, String model) async {
    var url = Uri.https('parallelum.com.br',
        'fipe/api/v1/$type/marcas/$mark/modelos/$model/anos');
    var response = await https.get(url);
    var lista = jsonDecode(response.body);
    return MainListComponent(lista: lista, route: '/price',type: type,mark: mark, model: model,);
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