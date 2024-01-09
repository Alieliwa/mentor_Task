import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/screens/book_session/book_session_free.dart';
import 'package:elmentor/presentation/screens/booked_successfully/booked_successfully.dart';
import 'package:elmentor/presentation/screens/details/details.dart';
import 'package:elmentor/presentation/screens/home_screen/homescreen.dart';
import 'package:elmentor/presentation/screens/mentor/mentors.dart';
import 'package:elmentor/presentation/screens/mentorsessionfinished/mentorsessionfinished.dart';
import 'package:elmentor/presentation/screens/payment/payment.dart';
import 'package:flutter/material.dart';

class Routs {
  static const String home = "/home";
  static const String bookFreeRoute = "/";
  static const String mentorsRoute = "/mentors";
  static const String detailsRoute = "/details";
  static const String paymentRoute = "/payment";
  static const String successfullyRoute = "/successfully";
  static const String mentorSessionFinished = "/mentorSessionFinished";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.home:
        return MaterialPageRoute(builder: (_) => const Home());
      case Routs.bookFreeRoute:
        return MaterialPageRoute(builder: (_) => const BookSessionFree());
      case Routs.mentorsRoute:
        return MaterialPageRoute(builder: (_) => const Mentors());
      case Routs.detailsRoute:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());
      case Routs.paymentRoute:
        return MaterialPageRoute(builder: (_) => const Payment());
      case Routs.successfullyRoute:
        return MaterialPageRoute(builder: (_) => const BookedSuccessfully());
      case Routs.mentorSessionFinished:
        return MaterialPageRoute(builder: (_) => const MentorSessionFinished());
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
