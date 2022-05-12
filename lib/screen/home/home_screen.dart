
import 'package:agendamento_consulta_nelcael/screen/firspage/first_page.dart';
import 'package:agendamento_consulta_nelcael/screen/menu/menu.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPage = 0;
  List<Widget> pageList = [];
  @override
  void initState() {
    pageList.add(const FirstPage());
    pageList.add(Menu());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema de agendamento de consulta"),
      ),
      body: IndexedStack(
        children: pageList,
        index: _selectedPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: "Início"),
          BottomNavigationBarItem(icon: const Icon(Icons.list_alt), label: "Menu"),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}
