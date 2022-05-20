import 'package:flutter/material.dart';
import 'package:agendamento_consulta/model/list/list.dart';
import 'package:agendamento_consulta/model/list/list_service.dart';

class ListScreen extends StatelessWidget {
  ListScreen({Key? key}) : super(key: key);
  TextEditingController pacienteController = TextEditingController();
  TextEditingController medicoController = TextEditingController();
  TextEditingController exames_solicitadosController = TextEditingController();
  TextEditingController medicamentosController = TextEditingController();
  TextEditingController data_retornoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro da lista pós consulta"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Scrollbar(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Paciente'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: pacienteController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha todos os campos';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Medico'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: medicoController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha todos os campos';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Exames solicitados'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: exames_solicitadosController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha todos os campos';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Medicamentos'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: medicamentosController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha todos os campos';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Data do retorno'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: data_retornoController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, preencha todos os campos';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Telefone'),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ListService listService = ListService();
                    List list = List(
                        pacienteController.text,
                        medicoController.text,
                        exames_solicitadosController.text,
                        medicamentosController.text,
                        data_retornoController.text);
                    listService.addList(list);
                  }
                },
                child: const Text("Salvar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
