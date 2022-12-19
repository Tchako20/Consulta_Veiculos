import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
import 'package:layout/src/components/sections/main_list_component.dart';

class ModelBloc {
  Future<Widget> getModels(String type, String mark) async {
    var url = Uri.https(
        'parallelum.com.br', 'fipe/api/v1/$type/marcas/$mark/modelos');
    var response = await https.get(url);
    var lista = jsonDecode(response.body)['modelos'];
    return MainListComponent(
      lista: lista,
      route: '/year',
      type: type,
      mark: mark,
    );
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
