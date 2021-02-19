import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'components/signin_form.dart';

final logoImage = Image.asset('images/lardi_logo.png', width: 200);

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            logoImage,
            SignInForm(),
          ],
        ));
  }
}
