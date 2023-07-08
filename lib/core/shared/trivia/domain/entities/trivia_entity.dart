// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
export 'package:equatable/equatable.dart';

abstract class TriviaEntity extends Equatable {
  final int number;
  final String trivia;

  const TriviaEntity({
    required this.number,
    required this.trivia,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [number, trivia];
}
