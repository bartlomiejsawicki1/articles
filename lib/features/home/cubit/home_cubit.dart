import 'package:articles/app/core/enums.dart';
import 'package:articles/domain/models/author_model.dart';
import 'package:articles/domain/repositories/authors_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.authorsRepository}) : super(HomeState());

  final AuthorsRepository authorsRepository;

  Future<void> start() async {
    emit(
      HomeState(
        status: Status.loading,
      ),
    );
    await Future.delayed(const Duration(seconds: 1));
    try {
      final results = await authorsRepository.getAuthorModels();
      emit(
        HomeState(
          status: Status.success,
          results: results,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
