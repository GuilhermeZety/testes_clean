// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeTriviaState extends HomeState {
  TriviaEntity trivia;
  HomeTriviaState({
    required this.trivia,
  });
}

class HomeErrorState extends HomeState {
  String message;
  HomeErrorState({
    required this.message,
  });
}
