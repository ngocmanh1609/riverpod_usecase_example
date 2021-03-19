import 'package:riverpod_usecase_example/data/network/exception/network_exceptions.dart';

class ApiResult<T> {
  Result result;
  late T data;
  late NetworkException error;

  ApiResult.success(this.data) : result = Result.Success;

  ApiResult.failure(this.error) : result = Result.Failure;
}

enum Result { Success, Failure }
