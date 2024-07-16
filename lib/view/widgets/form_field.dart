import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool? obscure;

  CustomFormField({
    Key? key,
    this.obscure,
    required this.controller,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscure ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 325,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: widget.obscure != null
            ? _obscureTextField()
            : _nonObscureTextField()
    );
  }

  Widget _nonObscureTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        obscureText: obscureText,
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }


  Widget _obscureTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: obscureText,
              controller: widget.controller,
              decoration: InputDecoration(
                labelText: widget.labelText,
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(
              obscureText
                  ? Icons.visibility_off // Ícone para senha invisível
                  : Icons.visibility, // Ícone para senha visível
            ),
          )
        ],
      ),
    );
  }

}
