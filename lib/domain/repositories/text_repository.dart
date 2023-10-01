import 'package:articles/data/remote_data_sources/text_remote_data_source.dart';
import 'package:articles/domain/models/text_model.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TextRepository {
  TextRepository(this.textRemoteDataSource);
  final TextRemoteRetroFitDataSource textRemoteDataSource;

 Future<Future<List<TextModel>>> getTextModels() async {
    return textRemoteDataSource.getText();
  }
}
