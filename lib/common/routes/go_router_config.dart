import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/presentation/cubits/root/root_cubit.dart';
import 'package:test_app/presentation/screens/root/root_screen.dart';

final goRouterConfig = GoRouter(initialLocation: '/root_screen', routes: [
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
