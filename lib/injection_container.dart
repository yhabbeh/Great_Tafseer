import 'package:get_it/get_it.dart';

import 'features/homePage/presentation/bloc/great_tafseer_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async{
  //!Feature - Great Tafsser
  //Bloc HomePage
  sl.registerFactory(() => GreatTafseerBloc(inputConverter: sl(),swipePageView: sl(),));

  //UseCase HomePage

  /*
  //To be continue
  */




}