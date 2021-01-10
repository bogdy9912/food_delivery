import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery/src/init/init.dart';
import 'package:food_delivery/src/models/index.dart';
import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';

mixin InitMixin<S extends StatefulWidget> on State<S> {
  final Completer<Store<AppState>> _completer = Completer<Store<AppState>>();

  @override
  void initState() {
    super.initState();
    _initStore();
  }

  Future<dynamic> _initStore() async {
    final List<dynamic> result = await ConcatStream<dynamic>(<Stream<dynamic>>[
      init().asStream(),
      Future<dynamic>.delayed(const Duration(seconds: 3)).asStream(),
    ]).toList();
    _completer.complete(result[0]);
  }

  Future<Store<AppState>> get future => _completer.future;
}
