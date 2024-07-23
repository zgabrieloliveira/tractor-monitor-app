import 'package:flutter/material.dart';

class AppElevationButton extends StatelessWidget {

  final String text;
  final void Function() onPressed;

  const AppElevationButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) => _buildButton();

  Widget _buildButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 8,
        fixedSize: const Size(80, 45),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(75)),
        padding: const EdgeInsets.symmetric(vertical: 11),
      ),
      child: Text(text),
      onPressed: () => onPressed,
    );
  }

}
