import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/view/navigation/bottom_nav_bar.dart';
import 'package:tractor_monitor_app/view/widgets/app_bar.dart';
import '../../util/constants.dart';
import '../widgets/menu_card.dart';

class HomeScreen extends StatefulWidget implements PreferredSizeWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  @override
  Size get preferredSize => throw UnimplementedError();

}

class _HomeScreenState extends State<HomeScreen> {

  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: BottomNavigationBarWidget(selectedIndex: selectedPage, onItemSelected: (item) {}),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MenuCard(label: 'Cadastrar Veiculo', icon: tractor),
              SizedBox(height: 15),
              MenuCard(label: 'Registrar Manutencao', icon: maintenance)
            ]
          ),
        ),
      )
    );
  }
}
