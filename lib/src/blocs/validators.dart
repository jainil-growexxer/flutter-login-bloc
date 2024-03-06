import 'dart:async';

mixin Validators {
  // input type is string and output type is string
  final emailValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.contains('@')) {
        sink.add(data);
      } else {
        sink.addError('Please enter a valid email address');
      }
    },
  );

  final passwordValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.length > 3) {
        sink.add(data);
      } else {
        sink.addError('Please enter a long password');
      }
    },
  );
}
