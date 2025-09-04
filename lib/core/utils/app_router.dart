import 'package:book_store/core/utils/service_locator.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo_impl.dart';
import 'package:book_store/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/book_details_view.dart';
import 'package:book_store/features/home/presentation/views/home_view.dart';
import 'package:book_store/features/search/presentation/views/search_view.dart';
import 'package:book_store/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final kHomeView = '/homeView';
  static final kBookDetailsView = '/bookDetailsView';
  static final kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder:
            (context, state) => BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(
                bookModel: state.extra as BookModel,
              ),
            ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
