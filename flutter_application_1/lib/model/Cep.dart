class Cep {
  final String cep;
  final String logradouro;
  final String bairro;
  final String localidade;
  final String uf;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;

  Cep(
      {required this.bairro,
      required this.cep,
      required this.ddd,
      required this.gia,
      required this.ibge,
      required this.localidade,
      required this.logradouro,
      required this.siafi,
      required this.uf});

  factory Cep.fromDocument(Map<String, dynamic> json) {
    return Cep(
        bairro: json['bairro'],
        cep: json['cep'],
        ddd: json['ddd'],
        gia: json['gia'],
        ibge: json['ibge'],
        localidade: json['localidade'],
        logradouro: json['logradouro'],
        siafi: json['siafi'],
        uf: json['uf']);
  }
}
