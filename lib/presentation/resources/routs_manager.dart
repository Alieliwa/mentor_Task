import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/screens/book_session/book_session_free.dart';
import 'package:elmentor/presentation/screens/mentor/mentors.dart';
import 'package:flutter/material.dart';

class Routs {
  static const String bookFreeRoute = "/";
  static const String mentorsRoute = "/mentors";
  // static const String registerRoute = "/register";
  // static const String forgotPasswordRoute = "/forgotPassword";
  // static const String mainRoute = "/main";
  // static const String onBoardingRoute = "/onBoarding";
  // static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.bookFreeRoute:
        return MaterialPageRoute(builder: (_) => const BookSessionFree());
      case Routs.mentorsRoute:
        return MaterialPageRoute(builder: (_) => const Mentors());
      // case Routs.registerRoute:
      //   return MaterialPageRoute(builder: (_) => RegisterView());
      // case Routs.forgotPasswordRoute:
      //   return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      // case Routs.mainRoute:
      //   return MaterialPageRoute(builder: (_) => MainView());
      // case Routs.storeDetailsRoute:
      //   return MaterialPageRoute(builder: (_) => StoreDetailsView());
      // case Routs.onBoardingRoute:
      //   return MaterialPageRoute(builder: (_) => OnBoardingView());
      default:
        return unDefinedPage();
    }
  }

  static Route<dynamic> unDefinedPage() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.notRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.notRouteFound),
        ),
      ),
    );
  }
}
