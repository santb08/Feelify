import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:feelify/core/exceptions/bad_data.dart';
import 'package:feelify/core/exceptions/not_found.dart';
import 'package:feelify/core/exceptions/server.dart';
import 'package:feelify/core/exceptions/unauthorized.dart';

/*
 * TODO: Implement http error messages 
 */
class ApiProvider {
  Future<T> get<T>(url) async {
    try {
      final response = await http.get(url);
      return _handleHttpResponse(response) as T;
    } on SocketException {
      throw SocketException('');
    }
  }
}

dynamic _handleHttpResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
    case 201:
      return json.decode(response.body);
    case 400:
      throw BadDataException('');
    case 401:
      throw UnauthorizedException('');
    case 404:
      throw NotFoundException('');
    case 500:
      throw ServerException('');
    default:
      throw HttpException('');
  }
}
