import 'package:dio/dio.dart';

abstract class Faliure {
  final String errorMessage;
  Faliure({required this.errorMessage});
}

class ServerFailure extends Faliure {
  ServerFailure({required String errorMessage})
      : super(errorMessage: errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Recive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad certificate error!');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Requist error canseld');
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errorMessage: 'No Interner Connection');
        }
      case DioExceptionType.unknown:
        return ServerFailure(errorMessage: 'Unexpected error with ApiServer');
    }
    return ServerFailure(errorMessage: 'Oops there was an error!');
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your request not found! Please try later.');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: 'Internal Server error! Please try later.');
    } else {
      return ServerFailure(
          errorMessage: 'Oops, there was an error. Please try later!');
    }
  }
}
