import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
class CustomException with _$CustomException {
  const factory CustomException.serverError() = _ServerError;
  const factory CustomException.notFound() = _NotFound;
}
