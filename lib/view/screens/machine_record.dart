import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/view/widgets/app_bar.dart';

class MachineRecordScreen extends StatefulWidget {
  const MachineRecordScreen({super.key});

  @override
  State<MachineRecordScreen> createState() => _MachineRecordScreenState();
}

class _MachineRecordScreenState extends State<MachineRecordScreen> {
  @override
  Widget build(BuildContext context) => _buildStockList();

  Widget _buildStockList() {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Cadastro de Máquina'),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: const Icon(Icons.add),
      ),
    );
  }

  void addItem() {}

}
