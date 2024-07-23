import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../model/machine.dart';
import '../../util/constants.dart';

class MachineListTile extends StatefulWidget {
  final Machine info;

  const MachineListTile(this.info, {super.key});

  @override
  State<MachineListTile> createState() => _MachineListTileState();
}

class _MachineListTileState extends State<MachineListTile> {

  late bool isExpanded;
  late Machine machine;

  @override
  void initState() {
    machine = widget.info;
    isExpanded = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => _buildUi();

  Widget _buildUi() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
      child: Slidable(
        startActionPane: startActionPane(),
        // endActionPane: endActionPane(),
        child: Container(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            // color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                color: DARK_GREEN.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              print('Foi apertado');
            },
            child: ListTile(
                leading: Image.asset(
                  'assets/icons/tractor.png',
                  width: 70,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                title: Text(machine.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                subtitle: Text(machine.id, style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
                trailing: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Manutencoes: ${machine.maintenances?.length}', style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
                    Text('Horimetro: ${machine.hourmeter}h', style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  // Widget _buildUi() {
  //   return Padding(
  //     padding: const EdgeInsets.all(16),
  //     child: Slidable(
  //       startActionPane: startActionPane(),
  //       // endActionPane: endActionPane(),
  //       child: Container(
  //         padding: const EdgeInsets.only(top: 12, bottom: 12),
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(8.0),
  //           // color: Colors.grey[200],
  //           boxShadow: [
  //             BoxShadow(
  //               color: DARK_GREEN.withOpacity(0.2),
  //               spreadRadius: 1,
  //               blurRadius: 2,
  //               offset: const Offset(0, 2),
  //             ),
  //           ],
  //         ),
  //         child: GestureDetector(
  //           onTap: () {
  //             print('Foi apertado');
  //             },
  //           child: ListTile(
  //               leading: Image.asset(
  //                 'assets/icons/tractor.png',
  //                 width: 70,
  //                 height: 60,
  //                 fit: BoxFit.cover,
  //               ),
  //               title: Text(machine.name),
  //               subtitle: Text(machine.id),
  //               trailing: Text('Manutencoes: ${machine.maintenances?.length}')),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // ActionPane endActionPane() {
  //   return ActionPane(
  //     motion: const ScrollMotion(), // Exemplo com ScrollMotion
  //     extentRatio: 0.2,
  //     children: [
  //       SlidableAction(
  //         // borderRadius: BorderRadius.circular(8),
  //         onPressed: (context) => _performAction(context, 'Ação 1'),
  //         icon: Icons.settings_sharp,
  //         // label: 'Manutencao',
  //         backgroundColor: ORANGE,
  //         foregroundColor: WHITE,
  //       ),
  //       // Adicione mais ações conforme necessário
  //     ],
  //   );
  // }

  ActionPane startActionPane() {
    return ActionPane(
      motion: const ScrollMotion(), // Exemplo com ScrollMotion
      extentRatio: 0.4,
      children: [
        SlidableAction(
          // borderRadius: BorderRadius.circular(8),
          onPressed: (context) => _performAction(context, 'Ação 1'),
          icon: CupertinoIcons.trash,
          // label: 'Deletar',
          backgroundColor: DARK_RED,
        ),
        SlidableAction(
          // borderRadius: BorderRadius.circular(8),
          onPressed: (context) => _performAction(context, 'Ação 1'),
          icon: Icons.settings_sharp,
          // label: 'Manutencao',
          backgroundColor: ORANGE,
          foregroundColor: WHITE,
        ),
        // Adicione mais ações conforme necessário
      ],
    );
  }

  void _performAction(BuildContext context, String action) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Ação selecionada: $action'),
    ));
  }
}
