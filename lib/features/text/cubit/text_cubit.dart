import 'package:articles/app/core/enums.dart';
import 'package:articles/domain/repositories/text_repository.dart';
import 'package:bloc/bloc.dart';
part 'text_state.dart';

class TextCubit extends Cubit<TextState> {
  TextCubit(this.textmodel) : super(TextState());

  final TextRepository textmodel;

  Future<void> name() async {
    emit(TextState(status: Status.loading));
    try {
      emit(TextState(status: Status.success));
    } catch (error) {
      emit(TextState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }
}
