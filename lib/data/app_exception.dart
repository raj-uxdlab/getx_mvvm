class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No Internet');
}


class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, 'Error During Communication: ');
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, 'Invalid Request: ');
}

class UnauthorisedException extends AppExceptions {
  UnauthorisedException([String? message]) : super(message, 'Unauthorised: ');
}

class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message]) : super(message, 'Invalid Input: ');
}