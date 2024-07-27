import 'package:afandem_app/core/routing/routes.dart';
import 'package:afandem_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      // case Routes.loginScreen:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //             create: (context) => LoginCubit(getIt<LoginRepo>()),
      //             child: const LoginScreen(),
      //           ));
      // case Routes.signUpScreen:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //             create: (context) => SignUpCubit(getIt<SignUpRepo>()),
      //             child: const SignUpScreen(),
      //           ));
      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const HomeScreen(),
      //   );
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text("No route defined ${settings.name}"),
                  ),
                ));
    }
  }
}
