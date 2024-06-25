import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/presentation/cubits/root/root_cubit.dart';
import 'package:test_app/presentation/screens/root/root_screen.dart';

final goRouterConfig = GoRouter(
    navigatorKey: GetIt.I<NavigationService>().navigatorKey,
    initialLocation: '/root',
    routes: [
      GoRoute(
        name: 'root_screen',
        path: '/root',
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => RootCubit(),
            ),
          ],
          child: const RootScreen(),
        ),
      ),
      //add new route accordingly
    ]);
