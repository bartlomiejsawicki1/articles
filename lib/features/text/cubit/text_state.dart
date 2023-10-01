part of 'text_cubit.dart';

class TextState {
  TextState({
    this.results = const [],
    this.status = Status.success,
    this.errorMessage,
  });

  final List<TextRepository> results;
  final Status status;
  final String? errorMessage;
}
