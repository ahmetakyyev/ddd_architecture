import 'package:dartz/dartz.dart';
import 'package:ddd_arhi/domain/core/failures.dart';
import 'package:ddd_arhi/domain/core/value_objects.dart';
import 'package:ddd_arhi/domain/core/value_validators.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddres(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
