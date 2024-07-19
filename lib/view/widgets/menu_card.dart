import 'package:flutter/material.dart';

class MenuCard extends StatefulWidget {

  final Widget? icon;
  final String label;

  const MenuCard({super.key, required this.label, this.icon});

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {

  late String label;
  late Widget? icon;

  @override
  void initState() {
    icon = widget.icon;
    label = widget.label;
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
        child: Column(
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
          ],
        ),
      ),
    );
  }

  void onClick() {

  }

}
