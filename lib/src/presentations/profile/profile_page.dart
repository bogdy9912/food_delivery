import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery/src/actions/auth/index.dart';
import 'package:food_delivery/src/containers/auth/user_container.dart';
import 'package:food_delivery/src/containers/store_container.dart';
import 'package:food_delivery/src/models/auth/index.dart';
import 'package:food_delivery/src/models/index.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _telephone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? currentUser) {
        _lastName.text = currentUser!.lastName;
        _firstName.text = currentUser.firstName;
        _email.text = currentUser.email;
        _telephone.text = currentUser.telephone;
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text('profil'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              TextButton(
                child: const Text(
                  'SALVEAZA',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(UpdateProfileInfo(
                      firstName: _firstName.text, lastName: _lastName.text, telephone: _telephone.text));
                },
              ),
            ],
          ),
          body: StoreContainer(
            builder: (BuildContext context, AuthState authState) {
              if (authState.isLoading ?? false) {
                return const Center(child: CircularProgressIndicator());
              }
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _lastName,
                      decoration: const InputDecoration(
                        labelText: 'nume',
                      ),
                    ),
                    TextField(
                      controller: _firstName,
                      decoration: const InputDecoration(
                        labelText: 'prenume',
                      ),
                    ),
                    TextField(
                      controller: _telephone,
                      decoration: const InputDecoration(
                        labelText: 'Telephone number',
                      ),
                    ),
                    TextField(
                      controller: _email,
                      decoration: const InputDecoration(
                        labelText: 'email',
                      ),
                      enabled: false,
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
