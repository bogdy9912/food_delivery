import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/actions/index.dart';
import 'package:food_delivery/src/containers/auth/registration_info_container.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:food_delivery/src/presentations/app_routes.dart';

class SetNamePage extends StatefulWidget {
  const SetNamePage({Key? key}) : super(key: key);

  @override
  _SetNamePageState createState() => _SetNamePageState();
}

class _SetNamePageState extends State<SetNamePage> {
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();

  void _response(AppAction action) {
    if (action is SignUpSuccessful) {
      Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
    }
  }

  @override
  Widget build(BuildContext context) {
    return RegistrationInfoContainer(
      builder: (BuildContext context, RegistrationInfo info) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Builder(
                builder: (BuildContext context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Personalizeaza aplicatia cu numele tau pentru o experienta mai interactiva',
                            style: TextStyle(color: ThemeData().primaryColor, fontSize: 20),
                          ),
                          Text(
                            '*poti modifica mai tarziu din profilul tau',
                            style: TextStyle(color: ThemeData().hintColor, fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: TextFormField(
                              controller: _firstName,
                              decoration: const InputDecoration(
                                hintText: 'prenume',
                              ),
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Acest camp este obligatoriu';
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: TextField(
                              controller: _lastName,
                              decoration: const InputDecoration(
                                hintText: 'nume',
                              ),
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.name,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(),
                      ElevatedButton(
                        child: const Text('Salveaza'),
                        onPressed: () {
                          final bool valid = Form.of(context)!.validate();
                          if (valid) {
                            StoreProvider.of<AppState>(context)
                                .dispatch(UpdateRegistrationInfo(firstName: _firstName.text, lastName: _lastName.text));
                            StoreProvider.of<AppState>(context).dispatch(SignUp(response: _response));
                          }
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
