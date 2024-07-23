import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/view/widgets/elevated_button.dart';

class MenuCard extends StatefulWidget {

  final Widget? icon;
  final String label;
  final String route;
  final List<String>? quickMenuOptions;

  const MenuCard({super.key, required this.label, this.icon, required this.route, this.quickMenuOptions});

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {

  late String label;
  late String route;
  late Widget? icon;
  late List<String>? quickMenuOptions;
  bool isExpanded = false;

  @override
  void initState() {
    route = widget.route;
    icon = widget.icon;
    label = widget.label;
    quickMenuOptions = widget.quickMenuOptions;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => _buildCard();

  Widget _buildCard() {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25), // Ajuste o raio dos cantos aqui
        ),
        padding: EdgeInsets.zero, // Remove padding around the button
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16,8,8,8),
        child: _optionLayout()
      ),
    );
  }

  void onClick() {
    Navigator.of(context).pushNamed(route);
  }

  Widget _optionLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (icon != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: icon,
            // child: Image.asset(
            //   'assets/icons/tractor.png',
            //   width: 80,
            //   height: 80,
            //   fit: BoxFit.cover,
            // ),
          ),
        const SizedBox(height: 13),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        // _buildQuickOptions()
      ],
    );
  }

  Widget _buildQuickOptions() {

    if (quickMenuOptions == null) return const SizedBox.shrink();
    if (quickMenuOptions!.isEmpty) return const SizedBox.shrink();

    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: quickMenuOptions!.map((current) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppElevationButton(
                text: current.toString(), // Converta para String se EnumType for usado diretamente
                onPressed: () {},
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
