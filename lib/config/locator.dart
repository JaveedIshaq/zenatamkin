import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/services/api_service.dart';

/// get the Instance of Dependency Injection GetIT
GetIt locator = GetIt.instance;

/// Register all Srvives to be used in app
void setupLocator() {
  locator
    ..registerLazySingleton(() => NavigationService())
    ..registerLazySingleton(() => DialogService())
    ..registerLazySingleton(() => SnackbarService())
    ..registerLazySingleton(() => ApiService());
}
