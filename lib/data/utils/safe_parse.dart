import 'package:freezed_annotation/freezed_annotation.dart';

// Custom type converter
class SafeConverter implements JsonConverter<dynamic, dynamic> {
  const SafeConverter();

  @override
  dynamic fromJson(dynamic value) {
    try {
      if (value == null) return null;

      if (value is List) {
        return value.isEmpty ? [] : value.first;
      }

      return value;
    } catch (e) {
      return null;
    }
  }

  @override
  dynamic toJson(dynamic value) => value;
}