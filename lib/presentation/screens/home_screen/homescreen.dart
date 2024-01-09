import 'package:elmentor/presentation/component/buildbutton.dart';
import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/routs_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Mentor",    style: TextStyle(
          fontSize: FontSize.s16,
          fontWeight: FontWeight.w600,
        ),),
        centerTitle: true,
        leading: Center(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p24),
            child: materialButton(
              text: AppStrings.bookFreeRoute,
              color: ColorManager.primary,
              onPressed: () {
                Navigator.pushNamed(context, Routs.bookFreeRoute);
              },
              circle: 100,
              textColor: ColorManager.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p24),
            child: materialButton(
              text: AppStrings.mentorSessionFinished,
              color: ColorManager.primary,
              onPressed: () {
                Navigator.pushNamed(context, Routs.mentorSessionFinished);
              },
              circle: 100,
              textColor: ColorManager.white,
            ),
          ),
        ],
      ) ,
    );
  }
}
