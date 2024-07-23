import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {

  final String labelText;
  final String? hintText;
  final bool? hasQnt;
  final bool? obscure;
  final bool? mandatory;
  final Function(String) onSavedCallback;
  final TextInputType? keyboardType;

  CustomFormField({
    Key? key,
    this.obscure,
    this.mandatory,
    required this.labelText,
    this.hintText, this.hasQnt, this.keyboardType, required this.onSavedCallback,
  }) : super(key: key);

  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  late double screenWidth;
  late bool mandatory;
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    mandatory = widget.mandatory ?? false;
    obscureText = widget.obscure ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: widget.obscure != null ? _obscureTextFormField() : _nonObscureTextFormField(),
    );
  }

  Widget _nonObscureTextFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: '${widget.labelText}${mandatory ? ' *' : ''}',
          hintText: widget.hintText ?? '',
          border: InputBorder.none,
        ),
        keyboardType: widget.keyboardType ?? TextInputType.text,
        validator: (value) {
          if ((value == null || value.isEmpty)) {
            if (mandatory) return 'Este campo é obrigatório';
          }
          return null;
        },
        onSaved: (value) {
          print('salvando');
          widget.onSavedCallback(value ?? '');
        },
      ),
    );
  }




  Widget _obscureTextFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: FormField<String>(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor, insira ${widget.labelText.toLowerCase()}';
          }
          return null;
        },
        onSaved: (value) {
          widget.onSavedCallback(value ?? ''); // Call the callback to update parent's state
        },
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
              labelText: widget.labelText,
              errorText: state.errorText,
              border: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: Icon(
                  obscureText
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
            ),
            child: TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration(
                labelText: widget.labelText,
                border: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira ${widget.labelText.toLowerCase()}';
                }
                return null;
              },
            ),
          );
        },
      ),
    );
  }
}
