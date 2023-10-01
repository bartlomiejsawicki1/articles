import 'package:articles/data/remote_data_sources/articles_remote_data_source.dart';
import 'package:articles/domain/models/article_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class ArticlesRepository {
  ArticlesRepository({required this.remoteDataSource});

  final ArticlesRemoteRetroFitDataSource remoteDataSource;

  Future<List<ArticleModel>> getArticlesForAuthorId(int authorId) async {
    final allArticles = await remoteDataSource.getArticles();

    return allArticles
        .where((article) => article.authorId == authorId)
        .toList();
  }
}
