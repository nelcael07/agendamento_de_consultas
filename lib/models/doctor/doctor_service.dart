import 'package:agendamento_consulta_nelcael/models/doctor/doctor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DoctorService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  addDoctor(Doctor doctor) {
    _firestore.collection('doctor').add(doctor.toMap());
  }
}
