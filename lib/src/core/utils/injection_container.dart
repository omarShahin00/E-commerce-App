// import 'package:get_it/get_it.dart';
// import 'package:http/http.dart' as http;
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:posts_app_ca/src/core/network/network_info.dart';
// import 'package:posts_app_ca/src/data/datasources/local/post_local_data_source.dart';
// import 'package:posts_app_ca/src/data/datasources/remote/post_remote_data_source.dart';
// import 'package:posts_app_ca/src/data/repositories/post_repo_impl.dart';
// import 'package:posts_app_ca/src/domain/repositories/post_repo.dart';
// import 'package:posts_app_ca/src/domain/usecases/add_posts.dart';
// import 'package:posts_app_ca/src/domain/usecases/delete_posts.dart';
// import 'package:posts_app_ca/src/domain/usecases/get_all_posts.dart';
// import 'package:posts_app_ca/src/domain/usecases/update_posts.dart';
// import 'package:posts_app_ca/src/presentaion/bloc/adu_posts/add_delete_update_posts_bloc.dart';
// import 'package:posts_app_ca/src/presentaion/bloc/posts/posts_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// final sl = GetIt.instance;

// Future<void> init() async {
//   // todo: read about dependency injection and design pattern

//   //! Features - post

//   //* Bloc

//   sl.registerFactory(
//     () => PostsBloc(
//       getAllPosts: sl.call(),
//     ),
//   );

//   sl.registerFactory(
//     () => AddDeleteUpdatePostsBloc(
//       addPost: sl.call(),
//       deletePost: sl.call(),
//       updatePost: sl.call(),
//     ),
//   );

//   //* Usecases

//   sl.registerLazySingleton(() => GetAllPostsUsecase(sl.call()));
//   sl.registerLazySingleton(() => AddPostsUsecase(sl.call()));
//   sl.registerLazySingleton(() => UpdatePostsUsecase(sl.call()));
//   sl.registerLazySingleton(() => DeletePostsUsecase(sl.call()));

//   //* Repository

//   sl.registerLazySingleton<PostsRepository>(
//     () => PostsRepositoryImpl(
//       remoteDataSource: sl.call(),
//       localDataSource: sl.call(),
//       networkInfo: sl.call(),
//     ),
//   );

//   //* Datasources

//   sl.registerLazySingleton<PostRemoteDataSource>(
//     () => PostRemoteDataSourceImpl(
//       client: sl.call(),
//     ),
//   );

//   sl.registerLazySingleton<PostLocalDataSource>(
//     () => PostLocalDataSourceImpl(
//       sharedPreferences: sl.call(),
//     ),
//   );

//   //! Core

//   sl.registerLazySingleton<NetworkInfo>(
//     () => NetworkInfoImpl(
//       connectionChecker: sl.call(),
//     ),
//   );

//   //! External

//   final sharedPreferences = await SharedPreferences.getInstance();

//   sl.registerLazySingleton(
//     () => sharedPreferences,
//   );

//   sl.registerLazySingleton(
//     () => http.Client(),
//   );

//   sl.registerLazySingleton(
//     () => InternetConnectionChecker(),
//   );
// }
