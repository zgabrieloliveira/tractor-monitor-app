import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tractor_monitor_app/controller/machine_controller.dart';
import 'package:tractor_monitor_app/view/screens/home.dart';
import 'package:tractor_monitor_app/view/screens/machine_record.dart';
import 'package:tractor_monitor_app/view/screens/machines_overview.dart';
import 'package:tractor_monitor_app/view/screens/maintenance_record.dart';
import 'package:tractor_monitor_app/view/screens/stock.dart';
import 'package:tractor_monitor_app/view/widgets/app_theme.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppTheme.themeNotifier,
      builder: (context, themeMode, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<MachineController>(
                create: (_) => MachineController()),
          ],
          child: MaterialApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
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
          ),
        );
      },
    );
  }
}
