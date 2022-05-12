class Doctor {
  late String id;
  String nome;
  String cpf;
  String endereco;
  String idade;
  String especialidade;
  String telefone;
  Doctor(this.nome, this.cpf, this.endereco, this.idade, this.especialidade,
      this.telefone);

  //formato json em objeto
  Doctor.fromMap(Map<String, dynamic> map) : nome = map['nome'],
    cpf = map['cpf'],
    endereco = map['endereco'],
    idade = map['idade'],
    especialidade = map['especialidade'],
    telefone = map['telefone']
  ;

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'cpf': cpf,
      'endereco': endereco,
      'idade': idade,
      'especialista': especialidade,
      'telefone': telefone
    };
  }
}