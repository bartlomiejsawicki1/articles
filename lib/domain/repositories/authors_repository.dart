import 'package:articles/data/remote_data_sources/authors_remote_data_source.dart';
import 'package:articles/domain/models/author_model.dart';

class AuthorsRepository {
  AuthorsRepository({required this.remoteDataSource});

  final AuthorsRemoteDioDataSource remoteDataSource;

  Future<List<AuthorModel>> getAuthorModels() async {
    final json = await remoteDataSource.getAuthors();
    if (json == null) {
      return [];
    }
    return json.map((item) => AuthorModel.fromJson(item)).toList();
  }
}