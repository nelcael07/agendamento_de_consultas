import 'package:agendamento_consulta/screen/doctor/doctor_screen.dart';
import 'package:agendamento_consulta/screen/home/home_screen.dart';
import 'package:agendamento_consulta/screen/pacients/pacients_screen.dart';
import 'package:agendamento_consulta/screen/list/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // runApp(const MyApp());
}

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: '/home',
        routes: {
          "/home": (context) => const HomeScreen(),
          "/paciente": (context) => PacientsScreen(),
          "/doutor": (context) => DoctorScreen(),
          "/lista": (context) => ListScreen(),
        });
  }
}
