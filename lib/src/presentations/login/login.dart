import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(
                hintText: 'email',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (String value) {
                if (!value.contains('@') || !value.contains('.')) {
                  return 'Adresa de email nu este valida';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _password,
              decoration: const InputDecoration(
                hintText: 'password',
              ),
              keyboardType: TextInputType.visiblePassword,
              validator: (String value) {
                if (value.length<6) {
                  return 'Parola prea scurta';
                }
                return null;
              },
              textInputAction: TextInputAction.done,
              obscureText: true,
            ),
            Row(
              children: <Widget>[
                const Spacer(),
                FlatButton(
                  child: const Text('Ai uitat parola?'),
                  onPressed: () {},
                ),
              ],
            ),
            RaisedButton(
              child: const Text('Login'),
              onPressed: () {},
            ),
            FlatButton(
              onPressed: () {},
              child: Text.rich(
                TextSpan(
                  text: 'Nu ai cont?',
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Inscrie-te aici',
                        style: const TextStyle(decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                          Navigator.pushNamed(context, AppRoutes.signUp);
                          }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
