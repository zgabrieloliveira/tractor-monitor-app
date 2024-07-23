import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/view/widgets/app_bar.dart';
import '../../model/maintenance.dart';
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
      appBar: const CustomAppBar(title: 'Monitor de Máquinas',),
      // bottomNavigationBar: BottomNavigationBarWidget(selectedIndex: selectedPage, onItemSelected: (item) {}),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 1, // Quantidade de colunas desejada
            mainAxisSpacing: 15, // Espaçamento entre os itens na vertical
            crossAxisSpacing: 15, // Espaçamento entre os itens na horizontal
            childAspectRatio: 2.0, // Proporção largura/altura dos itens
            children: [
              MenuCard(label: 'Cadastrar Máquina', icon: tractor, route: 'cadastro maquina'),
              MenuCard(label: 'Registrar Manutenção', icon: maintenance, route: 'manutencao', quickMenuOptions: const [EnumType.preventive, EnumType.predictive, EnumType.corrective]),
              MenuCard(label: 'Atualizar Estoque', icon: stock, route: 'estoque'),
              MenuCard(label: 'Consultar Máquinas', icon: lens, route: 'lista maquinas'),
            ],
          ),
        ),
      ),
    );
  }


}
