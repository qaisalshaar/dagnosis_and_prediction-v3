import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  final String textform;
  final IconData icon;
  final String validatorMessge;
  final TextInputType textInputType;

  final void Function(String?)? onSavedfunction;

  CustomTextField({
    Key? key,
    this.controller,
    required this.textform,
    required this.icon,
    required this.validatorMessge,
    required this.textInputType,
    required this.onSavedfunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool visibility = true;

    // This if condition Make when text form is password
    textform.contains('Password') ? visibility = true : visibility = false;
    return TextFormField(
      validator: (value) {
        print(value);

        if (value == null || value.isEmpty) {
          return ('Please email Must be not Empty');
        }
        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return ('Please enter Correct email');
        } else if (textform.contains('password') && value.length < 4) {
          return 'Password at least contains 3 character';
        }

        return null;
      },
      onSaved: onSavedfunction,
      keyboardType: textInputType,
      controller: controller,
      autofocus: false,
      textInputAction: TextInputAction.next,
      obscureText: visibility,
      decoration: InputDecoration(
        errorStyle: TextStyle(
            color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        prefixIcon: Icon(icon),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: textform,
        border: OutlineInputBorder(),
        errorBorder: OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.red, width: 3)),
        focusedErrorBorder: new OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.red, width: 5),
        ),
      ),
    );
  }
}
