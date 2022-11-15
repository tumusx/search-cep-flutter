import 'package:flutter/material.dart';
import 'package:flutter_application_1/repository/CepRepositoryImpl.dart';
import 'package:flutter_application_1/repository/ICepRepository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ICepRepository cepRepository = CepRepositoryImpl();
    var detailCepName = "";
    cepRepository.getDetailCep()?.then((value) => print(value.ddd));
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(detailCepName),
        ),
      ),
    );
  }
}
