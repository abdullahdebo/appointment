import 'package:appointment/core/di/dependency_injection.dart';
import 'package:appointment/core/routing/routes.dart';
import 'package:appointment/feature/home/ui/home_screen.dart';
import 'package:appointment/feature/login/logic/cubit/login_cubit.dart';
import 'package:appointment/feature/onboardingscreen.dart';
import 'package:appointment/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:appointment/feature/sign_up/ui/sign_up_screen.dart';
import 'package:appointment/feature/login/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const Onboardingscreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
