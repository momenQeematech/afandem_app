import 'package:afandem_app/core/networking/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  // getIt.registerSingleton<AuthRepositoryImplementation>(AuthRepositoryImplementation(
  //     getIt.get<ApiService>(),
  // ));

  // getIt.registerSingleton<HomeRepositoriesImplementation>(HomeRepositoriesImplementation(
  //   getIt.get<ApiService>(),
  // ));

  // getIt.registerSingleton<CategoriesRepositoryImplementation>(CategoriesRepositoryImplementation(
  //   getIt.get<ApiService>(),
  // ));

  // getIt.registerSingleton<FavoriteRepositoryImplementation>(FavoriteRepositoryImplementation(
  //   getIt.get<ApiService>(),
  // ));

  // getIt.registerSingleton<CartRepositoriesImplementation>(CartRepositoriesImplementation(
  //   getIt.get<ApiService>(),
  // ));

  // getIt.registerSingleton<PersonRepositoryImplementation>(PersonRepositoryImplementation(
  //   getIt.get<ApiService>(),
  // ));

  // getIt.registerSingleton<SearchRepositoryImplementation>(SearchRepositoryImplementation(
  //   getIt.get<ApiService>(),
  // ));
}
