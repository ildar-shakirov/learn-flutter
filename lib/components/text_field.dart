import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final Function(String) onSaved;

  FormInput(
      {this.onChanged,
      this.onSaved,
      this.hintText,
      this.obscureText = false,
      this.icon,
      this.textInputType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) => {onSaved(value)},
      onChanged: (value) {
        print(value);
        onChanged(value);
        return null;
      },
      autocorrect: false,
      obscureText: obscureText,
      keyboardType: textInputType,
      style: TextStyle(color: Colors.white70),
      decoration: InputDecoration(
          prefixIcon: icon != null ? Icon(icon, color: Colors.white60) : null,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white70, width: 2)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white38, width: 2)),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white60)),
    );
  }
}
