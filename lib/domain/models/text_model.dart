import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_model.g.dart';
part 'text_model.freezed.dart';

@freezed
class TextModel with _$TextModel {
  const TextModel._();
  factory TextModel(
    String title,
    String picture,
    String content,
  ) = _TextModel;

  factory TextModel.fromJson(Map<String, dynamic> json) =>
      _$TextModelFromJson(json);
}

// @JsonSerializable()
// class TextModel {
//   const TextModel({
//     required this.title,
//     required this.picture,
//     required this.content,
//   });
//   @JsonKey(name: 'title')
//   final String title;
//   @JsonKey(name: 'picture')
//   final String picture;
//   @JsonKey(name: 'content')
//   final String content;

//   factory TextModel.fromJson(Map<String, dynamic> json) =>
//       _$TextModelFromJson(json);
//   Map<String, dynamic> toJson() => _$TextModelToJson(this);
// }
