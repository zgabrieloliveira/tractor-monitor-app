import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/view/screens/home.dart';
import 'package:tractor_monitor_app/view/screens/machine_record.dart';
import 'package:tractor_monitor_app/view/screens/machines_overview.dart';
import 'package:tractor_monitor_app/view/screens/maintenance_record.dart';
import 'package:tractor_monitor_app/view/screens/stock.dart';
import 'package:tractor_monitor_app/view/widgets/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppTheme.themeNotifier,
      builder: (context, themeMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.baseTheme(),
          themeMode: themeMode,
          home: const HomeScreen(),
          routes: {
            'cadastro maquina': (context) => MachineRecordScreen(),
            'manutencao': (context) => MaintenanceRecordScreen(),
            'estoque': (context) => StockScreen(),
            'lista maquinas': (context) => MachinesOverviewScreen()
          },
        );
      },
    );
  }
}
