class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No Internet');
}
