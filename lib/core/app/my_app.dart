import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:threads_clone/core/config/app_colors.dart';
import 'package:threads_clone/core/router/app_routes.dart';
import 'package:threads_clone/di/di.dart';
import 'package:threads_clone/presentation/home/pages/home_page.dart';
import 'package:threads_clone/presentation/thread/cubit/thread_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.transparent,
      ),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThreadCubit(sl()),
        ),
      ],
      child: CupertinoApp(
        routes: appRoutes,
        theme: const CupertinoThemeData(
          brightness: Brightness.light,
          primaryColor: AppColors.black,
          scaffoldBackgroundColor: AppColors.white,
          barBackgroundColor: AppColors.white,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: const Locale("en"),
        home: const HomePage(),
      ),
    );
  }
}
