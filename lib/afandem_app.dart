import 'package:afandem_app/core/routing/app_router.dart';
import 'package:afandem_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AfandemApp extends StatelessWidget {
  AfandemApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 844),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        onGenerateRoute: appRouter.generateRoute,
        title: 'Afandem App',
        theme: ThemeData(
          useMaterial3: true,
        ),
      ),
    );
  }
}
