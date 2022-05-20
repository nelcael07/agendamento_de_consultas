import 'package:agendamento_consulta/model/list/list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ListService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  addList(List list) {
    _firestore.collection('list').add(list.toMap());
  }
}
