import 'dart:convert';

import 'package:flutter_application_1/repository/ICepRepository.dart';

import '../model/Cep.dart';
import 'package:http/http.dart' as httptask;

class CepRepositoryImpl implements ICepRepository {
  @override
  Future<Cep>? getDetailCep() async {
    final responseHttp = await httptask
        .get(Uri.parse("https://viacep.com.br/ws/01001000/json/"));
    try {
      Map<String, dynamic> parsedJson = jsonDecode(responseHttp.body);
      Cep cepDetailsModel = Cep.fromDocument(parsedJson);
      return Future.value(cepDetailsModel);
    } catch (exception) {
      return Future.value(null);
    }
  }
}
