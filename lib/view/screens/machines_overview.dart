import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tractor_monitor_app/controller/machine_controller.dart';
import 'package:tractor_monitor_app/util/constants.dart';
import 'package:tractor_monitor_app/view/widgets/app_bar.dart';
import 'package:tractor_monitor_app/view/widgets/machine_list_tile.dart';

class MachinesOverviewScreen extends StatefulWidget {
  const MachinesOverviewScreen({super.key});

  @override
  State<MachinesOverviewScreen> createState() => _MachinesOverviewScreenState();
}

class _MachinesOverviewScreenState extends State<MachinesOverviewScreen> {
  @override
  Widget build(BuildContext context) => _buildUi();

  Widget _buildUi() {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Máquinas'),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return Consumer<MachineController>(
      builder: (BuildContext _, MachineController value, Widget? __) {
        return Visibility(
          visible: value.machines.isNotEmpty,
          replacement: _emptyList(),
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8), // Espaçamento vertical entre os itens
            // itemExtent: 150,
            itemCount: value.machines.length,
              itemBuilder: (_, index) {
                final current = value.machines[index];
                return MachineListTile(current);
              }
          ),
        );
      },
    );
  }
  
  Widget _emptyList() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          not_found,
          const SizedBox(height: 15),
          const Text('Nao foi encontrado nenhum registro...', overflow: TextOverflow.fade)
        ],
      ),
    );
  }

}
