import 'package:agendamento_consulta_nelcael/models/pacients/pacients.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PacientsService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  addPacients(Pacients pacients) {
    _firestore.collection('pacients').add(pacients.toMap());
  }
}
