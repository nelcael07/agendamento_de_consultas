import 'package:agendamento_consulta_nelcael/utils/itens_menu_screen.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);
  ItensMenuScreen item1 = ItensMenuScreen(
    "Cadastrar paciente",
    "assets/image/icons8-febre-64.png",
  );
  ItensMenuScreen item2 = ItensMenuScreen(
    "Cadastrar médico",
    "assets/image/icons8-médico-50.png",
  );
  ItensMenuScreen item3 = ItensMenuScreen(
    "Cadastrar ficha de atendimento",
    "assets/image/icons8-folha-de-papel-80.png",
  );

  @override
  Widget build(BuildContext context) {
    List<ItensMenuScreen> myList = [item1, item2, item3];
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.builder(
          itemCount: myList.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemBuilder: (BuildContext ctx, index) {
            return GestureDetector(
              onTap: () => callUnit(ctx, index),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(children: [
                  Image.asset(myList[index].image),
                  Text(myList[index].title),
                ]),
              ),
            );
          }),
    );
  }

  callUnit(BuildContext context, int index) {
    if (index == 0){
      Navigator.of(context).pushNamed("/paciente");
    }else{
      if (index == 1) {
        Navigator.of(context).pushNamed("/doutor");
      }else{
        if(index == 2){
          Navigator.of(context).pushNamed("/lista");
        }
      }
    }
    
  }
}
