import 'dart:io';

class ServerException extends HttpException {
  ServerException(String message) : super(message);
}