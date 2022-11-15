import '../model/Cep.dart';

abstract class ICepRepository {
  Future<Cep>? getDetailCep();
}
