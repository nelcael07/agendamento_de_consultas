class List {
  late String id;
  String paciente;
  String medico;
  String exames_solicitados;
  String medicamentos;
  String data_retorno;
  List(this.paciente, this.medico, this.exames_solicitados, this.medicamentos, this.data_retorno);

  //formato json em objeto
  List.fromMap(Map<String, dynamic> map) :
    paciente = map['paciente'],
    medico = map['medico'],
    exames_solicitados = map['exames_solicitados'],
    medicamentos = map['medicamentos'],
    data_retorno = map['data_retorno']
  ;

  Map<String, dynamic> toMap() {
    return {
      'paciente': paciente,
      'medico': medico,
      'exames_solicitados': exames_solicitados,
      'medicamentos': medicamentos,
      'data_retorno': data_retorno,
    };
  }
}