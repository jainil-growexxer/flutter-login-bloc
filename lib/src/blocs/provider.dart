import 'package:flutter/material.dart';
import 'bloc.dart';

// must extend from InheritedWidget 
class Provider extends InheritedWidget {
  final Bloc bloc = Bloc();

  Provider({super.key, required super.child});

  @override
  bool updateShouldNotify(oldWidget) => true;

  // of named constructor used to get to the context that has type of provider
  // context will go up and up until it reaches the type Provider and gets the bloc
  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider)
        .bloc;
  }
}
