import 'package:articles/app/core/enums.dart';
import 'package:articles/domain/models/article_model.dart';
import 'package:articles/domain/repositories/articles_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'articles_state.dart';

@injectable
class ArticlesCubit extends Cubit<ArticlesState> {
  ArticlesCubit({required this.articlesRepository}) : super(ArticlesState());

  final ArticlesRepository articlesRepository;

  Future<void> fetchData({required int authorId}) async {
    emit(
      ArticlesState(
        status: Status.loading,
      ),
    );
    await Future.delayed(const Duration(seconds: 1));
    try {
      final results = await articlesRepository.getArticlesForAuthorId(authorId);
      emit(
        ArticlesState(
          status: Status.success,
          results: results,
        ),
      );
    } catch (error) {
      emit(
        ArticlesState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
