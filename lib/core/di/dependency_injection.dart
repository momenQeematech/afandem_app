
// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';

// final getIt = GetIt.instance;

// void setupGetIt() async {
// // Dio & ApiService
//   Dio dio = DioFactory.getDio();

// // Registering all the dependencies
// // law ana 3mlt registerLazySingleton m3na kda ano hia5od object wa7ed lakn law 3mlt factory register singelton yb2a kol mara hi3mel object
//   getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

//   //  LoginRepo(getIt())) ---> dh m3nah any b2ol l getIt wafrily el dependecy ely na m7tagha
//   getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
//   getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

//   getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
//   getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
// }
