import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final IconData? icon;
  const PasswordField(
      {Key? key,
      required this.labelText,
      this.hintText,
      this.controller,
      this.icon})
      : super(key: key);

  @override
  State<PasswordField> createState() {
    return PasswordFieldState();
  }
}

class PasswordFieldState extends State<PasswordField> {
  bool passHide = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: passHide ? true : false,
      validator: ((value) =>
          value!.isNotEmpty ? null : "This field is required"),
      cursorColor: Colors.black,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: const TextStyle(fontSize: 15),
        icon: Icon(
          widget.icon,
          color: Colors.black,
          size: 20,
        ),
        suffixIcon: IconButton(
          /**Icons.visibility */
          color: Colors.black,
          icon:
              Icon(passHide ? Icons.visibility : Icons.visibility_off_rounded),
          onPressed: () {
            setState(() {
              passHide = !passHide;
            });
          },
        ),
        suffixStyle: const TextStyle(color: Colors.green),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal)),
      ),
    );
  }
}
