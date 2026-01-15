import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pegasus_wallet/core/theme/cubit/theme_cubit.dart';
import 'package:pegasus_wallet/features/bottom_bar/bottom_bar_bloc.dart';
import 'package:pegasus_wallet/router/app_router.dart';

import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );

  runApp(const ShellApp());
}

class ShellApp extends StatelessWidget {
  const ShellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomBarBloc()),
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Pegasus Wallet',
          theme: state.themeData,
          themeMode: state.theme == AppTheme.darkTheme
              ? ThemeMode.dark
              : ThemeMode.light,
          onGenerateRoute: appRouter.onGenerateRoute,
        );
      },
    );
  }
}
