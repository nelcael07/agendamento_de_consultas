import 'package:agendamento_consulta/model/pacients/pacients.dart';
import 'package:agendamento_consulta/model/pacients/pacients_service.dart';
import 'package:flutter/material.dart';

class PacientsScreen extends StatelessWidget {
  PacientsScreen({Key? key}) : super(key: key);
  TextEditingController nomeController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  TextEditingController problema_saudeController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro de pacientes"),
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
                    const Text('Nome'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: nomeController,
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
                    const Text('CPF'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: cpfController,
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
                    const Text('Endereço'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: enderecoController,
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
                    const Text('Idade'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: idadeController,
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
                    const Text('Problema de Saúde'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: problema_saudeController,
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
                      height: 20,
                    ),
                    TextFormField(
                      controller: telefoneController,
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
                      height: 30,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    PacientsService pacientsService = PacientsService();
                    Pacients pacients = Pacients(
                        nomeController.text,
                        cpfController.text,
                        enderecoController.text,
                        idadeController.text,
                        problema_saudeController.text,
                        telefoneController.text);
                    pacientsService.addPacients(pacients);
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
