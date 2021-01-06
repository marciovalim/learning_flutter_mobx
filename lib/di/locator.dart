import 'package:get_it/get_it.dart';
import 'package:learning_mob_x/data/core/auth_service.dart';
import 'package:learning_mob_x/data/data_sources/user_data_source.dart';
import 'package:learning_mob_x/data/repositories/user_repository_impl.dart';
import 'package:learning_mob_x/domain/repositories/user_repository.dart';
import 'package:learning_mob_x/domain/usecases/login_usecase.dart';
import 'package:learning_mob_x/presentation/viewmodels/user_viewmodel.dart';

final locator = GetIt.instance;

class GetItUtils {
  const GetItUtils._();

  static Future<void> setup() async {
    locator.registerSingleton<UserViewModel>(UserViewModel());
    locator.registerLazySingleton<AuthService>(
      () => AuthService.singleton(),
    );
    locator.registerLazySingleton<UserDataSource>(
      () => UserDataSourceImpl(locator<AuthService>()),
    );
    locator.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(locator<UserDataSource>()),
    );
    locator.registerLazySingleton<LoginUsecase>(
      () => LoginUsecase(locator<UserRepository>()),
    );
  }
}
