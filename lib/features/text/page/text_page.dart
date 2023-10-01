import 'package:articles/app/core/enums.dart';
import 'package:articles/data/remote_data_sources/text_remote_data_source.dart';
import 'package:articles/domain/models/text_model.dart';
import 'package:articles/domain/repositories/text_repository.dart';
import 'package:articles/features/text/cubit/text_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextPage extends StatelessWidget {
  const TextPage(
    {
    Key? key, required this.textModel,
  }) : super(key: key);
  final  TextModel textModel ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: BlocProvider(
          create: (context) =>
              TextCubit(TextRepository(TextRemoteRetroFitDataSource(Dio()))),
          child: BlocBuilder<TextCubit, TextState>(
            builder: (context, state) {
              switch (state.status) {
                case Status.error:
                  return Center(
                    child: Text('Erorr'),
                  );
                case Status.initial:
                  return Center(
                    child: Text('Initial State'),
                  );
                case Status.loading:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                case Status.success:
                  return Container(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _TextWidget(
                            textModel: textModel,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: Text(
                              'Powrót',
                            ),
                          )
                        ],
                      ),
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({
    super.key,
    required this.textModel,
  });
  final TextModel textModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(textModel.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(textModel.picture),
            Text(textModel.content),
          ],
        ),
      ),
    );
  }
}
