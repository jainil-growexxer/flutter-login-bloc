import 'package:flutter/material.dart';
import '../src/blocs/provider.dart';
import 'widgets/login_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Login BLOC',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: const Login(),
        ),
      ),
    );
  }
}
