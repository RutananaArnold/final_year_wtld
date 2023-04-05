import 'package:final_year_wtld/screens/index.dart';
import 'package:final_year_wtld/widgets/input_field.dart';
import 'package:final_year_wtld/widgets/password_field.dart';
import 'package:final_year_wtld/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 232, 232),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            SizedBox(height: 120, width: 120, child: Text("Welcome")),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            const InputField(
              icon: Icons.phone,
              labelText: "Phone",
              hintText: "E.g 0778543678",
              // controller: authAdmin.loginPhoneController,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            PasswordField(
              icon: Icons.lock,
              labelText: "Password",
              hintText: "Password",
              // controller: authAdmin.loginPassController,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
                text: "Login",
                press: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Index()),
                        (route) => false);
                  }
                }),
          ],
        ),
      ),
    );
  }
}
