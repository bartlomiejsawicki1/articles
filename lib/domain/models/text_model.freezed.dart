// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextModel _$TextModelFromJson(Map<String, dynamic> json) {
  return _TextModel.fromJson(json);
}

/// @nodoc
mixin _$TextModel {
  String get title => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextModelCopyWith<TextModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextModelCopyWith<$Res> {
  factory $TextModelCopyWith(TextModel value, $Res Function(TextModel) then) =
      _$TextModelCopyWithImpl<$Res, TextModel>;
  @useResult
  $Res call({String title, String picture, String content});
}

/// @nodoc
class _$TextModelCopyWithImpl<$Res, $Val extends TextModel>
    implements $TextModelCopyWith<$Res> {
  _$TextModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? picture = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextModelCopyWith<$Res> implements $TextModelCopyWith<$Res> {
  factory _$$_TextModelCopyWith(
          _$_TextModel value, $Res Function(_$_TextModel) then) =
      __$$_TextModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String picture, String content});
}

/// @nodoc
class __$$_TextModelCopyWithImpl<$Res>
    extends _$TextModelCopyWithImpl<$Res, _$_TextModel>
    implements _$$_TextModelCopyWith<$Res> {
  __$$_TextModelCopyWithImpl(
      _$_TextModel _value, $Res Function(_$_TextModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? picture = null,
    Object? content = null,
  }) {
    return _then(_$_TextModel(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextModel extends _TextModel {
  _$_TextModel(this.title, this.picture, this.content) : super._();

  factory _$_TextModel.fromJson(Map<String, dynamic> json) =>
      _$$_TextModelFromJson(json);

  @override
  final String title;
  @override
  final String picture;
  @override
  final String content;

  @override
  String toString() {
    return 'TextModel(title: $title, picture: $picture, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, picture, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextModelCopyWith<_$_TextModel> get copyWith =>
      __$$_TextModelCopyWithImpl<_$_TextModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextModelToJson(
      this,
    );
  }
}

abstract class _TextModel extends TextModel {
  factory _TextModel(
          final String title, final String picture, final String content) =
      _$_TextModel;
  _TextModel._() : super._();

  factory _TextModel.fromJson(Map<String, dynamic> json) =
      _$_TextModel.fromJson;

  @override
  String get title;
  @override
  String get picture;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_TextModelCopyWith<_$_TextModel> get copyWith =>
      throw _privateConstructorUsedError;
}
