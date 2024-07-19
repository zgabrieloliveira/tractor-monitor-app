import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/view/widgets/app_bar.dart';

class MachinesOverviewScreen extends StatefulWidget {
  const MachinesOverviewScreen({super.key});

  @override
  State<MachinesOverviewScreen> createState() => _MachinesOverviewScreenState();
}

class _MachinesOverviewScreenState extends State<MachinesOverviewScreen> {
  @override
  Widget build(BuildContext context) => _buildStockList();

  Widget _buildStockList() {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Máquinas'),
    );
  }

  void addItem() {}

}
