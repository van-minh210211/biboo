import 'package:biboo/bloc/audio_cubit/audio_cubit.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:just_audio/just_audio.dart';



final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Dependencies
  // injector.registerSingleton<NewsApiService>(NewsApiService(injector()));
  // injector.registerSingleton<ArticlesRepository>(
  //     ArticlesRepositoryImpl(injector()));

  // UseCases
  // injector
  //     .registerSingleton<GetArticlesUseCase>(GetArticlesUseCase(injector()));

  // Blocs
  // injector.registerFactory<RemoteArticlesCubit>(
  //     () => RemoteArticlesCubit(injector()));

  injector.registerFactory<AudioCubit>(
      () => AudioCubit(injector()));

  injector.registerFactory<AudioPlayer>(
      () => AudioPlayer());

}
