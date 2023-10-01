import 'package:articles/domain/models/text_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'text_remote_data_source.g.dart';

@RestApi(
    baseUrl:
        "https://my-json-server.typicode.com/adamsmaka/json-demo/articles/")
abstract class TextRemoteRetroFitDataSource {
  factory TextRemoteRetroFitDataSource(Dio dio, {String baseUrl}) = _TextRemoteRetroFitDataSource;

  @GET("/1")
  Future<List<TextModel>> getText();
}


// class TextRemoteDataSource{

//   Future<List<Map<String, dynamic>>?> getText() async{
//     final response = await Dio().get<List<dynamic>>(
//         'https://my-json-server.typicode.com/adamsmaka/json-demo/articles/1');
//     final listDynamic = response.data;
//     if (listDynamic == null) {
//       return null;
//     }
//     return listDynamic.map((e) => e as Map<String, dynamic>).toList();
//   }
// }