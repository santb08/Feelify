import 'dart:io';

class BadDataException extends HttpException {
  BadDataException(String message) : super(message);
}