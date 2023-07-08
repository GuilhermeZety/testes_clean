class AppApiPath {
  static String baseUrl = 'http://numbersapi.com/';

  static String randonTrivia = '${baseUrl}random';
  static String trivia(number) => '$baseUrl$number';
}
