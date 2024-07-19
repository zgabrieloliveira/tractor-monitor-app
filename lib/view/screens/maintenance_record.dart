import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/view/widgets/app_bar.dart';

class MaintenanceRecordScreen extends StatefulWidget {
  const MaintenanceRecordScreen({super.key});

  @override
  State<MaintenanceRecordScreen> createState() => _MaintenanceRecordScreenState();
}

class _MaintenanceRecordScreenState extends State<MaintenanceRecordScreen> {
  @override
  Widget build(BuildContext context) => _buildStockList();

  Widget _buildStockList() {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Manutenções'),
    );
  }

  void addItem() {}

}
