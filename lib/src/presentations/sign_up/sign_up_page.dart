import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creare cont'),
        centerTitle: true,

      ),
      body: Form(
        child: Builder(
          builder:(BuildContext context) {
            return Padding(
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
                    hintText: 'parola',
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  validator: (String value) {
                    if (value.length < 6) {
                      return 'Parola prea scurta(min 6 caractere)';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'confirma parola',
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  validator: (String value) {
                    if (value != _password.text) {
                      return 'Parolele nu coincid';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
                RaisedButton(
                  child: const Text('Inregistrare'),
                  onPressed: () {
                    final bool valid = Form.of(context).validate();
                    if (valid) {
                      StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(email: _email.text, password: _password.text));
                      Navigator.pushReplacementNamed(context, AppRoutes.setName);
                    }
                  },
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text.rich(
                    TextSpan(
                      text: 'Ai cont? ',
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Conecteaza-te',
                            style: const TextStyle(decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                              }),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
          },
        ),
      ),
    );
  }
}
