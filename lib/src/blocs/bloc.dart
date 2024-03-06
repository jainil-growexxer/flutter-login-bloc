import 'dart:async';
import 'package:login_bloc/src/blocs/validators.dart';

class Bloc with Validators {
  // underscore(_) to make it private
  // Passing <String> as a generic to indicate type of data that will be passed, can be changed later on as well
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // Add data to stream, return type is stream of data type
  Stream<String> get email => _email.stream.transform(emailValidator);
  Stream<String> get password => _password.stream.transform(passwordValidator);

  // Change data, return type is function that will be passed a string
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  // close the stream
  dispose() {
    _email.close();
    _password.close();
  }
}
