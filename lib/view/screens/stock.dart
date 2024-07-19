import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/view/widgets/app_bar.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({super.key});

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  @override
  Widget build(BuildContext context) => _buildStockList();

  Widget _buildStockList() {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Estoque'),
      floatingActionButton: FloatingActionButton(
          onPressed: addItem,
          child: const Icon(Icons.add),
      ),
    );
  }

  void addItem() {}

}
