import 'package:articles/data/remote_data_sources/authors_remote_data_source.dart';
import 'package:articles/domain/models/author_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthorsRepository {
  AuthorsRepository({required this.remoteDataSource});

  final AuthorsRemoteRetroFitDataSource remoteDataSource;

  Future<List<AuthorModel>> getAuthorModels() async {
    return remoteDataSource.getAuthors();
  }
}
