import 'dart:io';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object?> get props => [message];

  factory Failure.fromException(Object exception) {
    if (exception is Failure) return exception;
    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.connectionTimeout:
          return const TimeoutFailure("Connection timeout");

        case DioExceptionType.sendTimeout:
          return const TimeoutFailure("Send timeout");

        case DioExceptionType.receiveTimeout:
          return const TimeoutFailure("Receive timeout");

        case DioExceptionType.badResponse:
          final statusCode = exception.response?.statusCode;
          final data = exception.response?.data;
          String msg = "";

          if (data is Map<String, dynamic>) {
            msg = (data['errors'] as List<dynamic>?)
                ?.map((e) => e['name'].toString())
                .join(', ') ?? "";
          } else {
            msg = "Unexpected server response";
          }
          if (statusCode == 401) {
            return const UnauthorizedFailure();
          } else if (statusCode == 404) {
            return NotFoundFailure(msg.toString());
          } else if (statusCode == 500) {
            return ServerFailure("Server Error: $msg");
          } else if (statusCode == 502) {
            return ServerFailure("Bad Gateway, please try again");
          } else {
            return ServerFailure("HTTP $statusCode: $msg");
          }

        case DioExceptionType.cancel:
          return const CancelledFailure();

        case DioExceptionType.unknown:
        default:
          if (exception.error is SocketException) {
            return const NetworkFailure();
          } else {
            return UnknownFailure(exception.message ?? "Unknown Dio error");
          }
      }
    }

    if (exception is SocketException) {
      return const NetworkFailure();
    } else if (exception is TimeoutFailure) {
      return const TimeoutFailure();
    } else {
      return UnknownFailure(exception.toString());
    }
  }
  @override
  String toString() => '$runtimeType: $message';
}

class NetworkFailure extends Failure {
  const NetworkFailure() : super("No internet connection");
}

class TimeoutFailure extends Failure {
  const TimeoutFailure([super.msg = "Request timed out"]);
}

class ServerFailure extends Failure {
  const ServerFailure([super.msg = "Server error"]);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([super.msg = "Resource not found"]);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure() : super("Unauthorized request");
}

class CancelledFailure extends Failure {
  const CancelledFailure() : super("Request was cancelled");
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.msg = "An unknown error occurred"]);
}
