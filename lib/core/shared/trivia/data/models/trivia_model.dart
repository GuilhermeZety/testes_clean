// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:testes_clean/core/shared/trivia/domain/entities/trivia_entity.dart';
export 'package:testes_clean/core/shared/trivia/domain/entities/trivia_entity.dart';

class TriviaModel extends TriviaEntity {
  const TriviaModel({
    required super.number,
    required super.trivia,
  });

  TriviaModel copyWith({
    int? number,
    String? trivia,
  }) {
    return TriviaModel(
      number: number ?? this.number,
      trivia: trivia ?? this.trivia,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'trivia': trivia,
    };
  }

  factory TriviaModel.fromMap(Map<String, dynamic> map) {
    return TriviaModel(
      number: map['number'] as int,
      trivia: map['trivia'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TriviaModel.fromJson(String source) => TriviaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
