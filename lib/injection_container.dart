
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'core/network/network_info.dart';
import 'core/util/input_converter.dart';
import 'features/homePage/data/data_source/great_tafseer_local_data_source.dart';
import 'features/homePage/data/data_source/great_tafseer_remote_data_source.dart';
import 'features/homePage/data/repositories/home_page_repository_impl.dart';
import 'features/homePage/domain/repositories/great_tafseer_repository.dart';
import 'features/homePage/domain/usecase/swipe_page_view.dart';
import 'features/homePage/presentation/bloc/great_tafseer_bloc.dart';
import 'package:http/http.dart'as http;

final sl = GetIt.instance;

Future<void> init() async {
  //!Feature - Great Tafsser
  //Bloc HomePage
  sl.registerFactory(() => GreatTafseerBloc(
        inputConverter: sl(),
        swipePageView: sl(),
      ));
  //UseCase HomePage
  sl.registerLazySingleton(() => SwipePageView(repository: sl()));

  //Repositories
  sl.registerLazySingleton<HomePageRepository>(() => HomePageRepositoryImpl(
        tafseerLocalDataSource: sl(),
        tafseerRemoteDataSource: sl(),
      ));

  //Data Sources

  sl.registerLazySingleton<GreatTafseerLocalDataSourceImpl>(() => GreatTafseerLocalDataSourceImpl());
  sl.registerLazySingleton<GreatTafseerRemoteDataSource>(() => GreatTafseerRemoteDataSourceImpl());


//Core

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton(() => InputConverter());

//External
sl.registerLazySingleton(() => http.Client());
sl.registerLazySingleton(() => InternetConnectionChecker());

  /*
  //To be continue
  */
}
