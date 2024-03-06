import 'package:flutter/material.dart';
import 'widgets/login_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login BLOC',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: const Login(),  
      ),
    );
  }
}
