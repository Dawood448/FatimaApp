import 'package:flutter/material.dart';
class KFieldWidget extends StatelessWidget {
  final String label;
  final hint;
  final IconData icon;
  final TextInputType textInputType;
   bool obsecureText = false;
   final TextEditingController controller;

   KFieldWidget({Key? key,
    required this.label,
    required this.hint,
    required this.icon,
    required this.textInputType,
    required this.obsecureText,
     required this.controller,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        controller: controller,
      keyboardType: textInputType,
      obscureText: obsecureText,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon:  Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
