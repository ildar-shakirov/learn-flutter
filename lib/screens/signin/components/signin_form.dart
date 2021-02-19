import 'package:flutter/material.dart';

import '../../../components/text_field.dart';
import '../../../components/default_button.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final padding = EdgeInsets.symmetric(horizontal: 30, vertical: 10);

  String login;
  String password;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: padding,
            child: FormInput(
              hintText: 'Login or e-mail',
              icon: Icons.person,
              textInputType: TextInputType.emailAddress,
              onSaved: (newValue) => login = newValue,
              onChanged: (value) {
                // handleValidation
                return null;
              },
            ),
          ),
          Container(
              padding: padding,
              child: FormInput(
                  hintText: 'Password', obscureText: true, icon: Icons.lock)),
          Container(
              padding: padding,
              child: DefaultButton(
                  text: 'Sign In', press: () => handleButtonPress()))
        ],
      ),
    );
  }

  void handleButtonPress() => {print(_formKey.currentState)};
}
