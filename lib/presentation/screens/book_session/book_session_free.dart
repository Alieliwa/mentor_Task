import 'package:elmentor/presentation/component/buildbutton.dart';
import 'package:elmentor/presentation/component/progress_bar.dart';
import 'package:elmentor/presentation/component/session_continar.dart';
import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/routs_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:elmentor/presentation/screens/career_advisor/career%D9%80advisor.dart';
import 'package:elmentor/presentation/screens/college_mentor/college_mentor.dart';
import 'package:elmentor/presentation/screens/mentor/mentors.dart';
import 'package:flutter/material.dart';

class BookSessionFree extends StatefulWidget {
  const BookSessionFree({super.key});

  @override
  State<BookSessionFree> createState() => _BookSessionFreeState();
}

class _BookSessionFreeState extends State<BookSessionFree> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.appBarOne,
          style: TextStyle(fontSize: FontSize.s16, fontWeight: FontWeight.w600,
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p24),
            child: Image.asset(
              "assets/image/img.png",
              height: 24,
              width: 24,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          sessionContainer(),
          progressBar(width: 69.10,),
          SizedBox(
            height: 20.0,
          ),
          textGetHelp(),
          SizedBox(
            height: 24.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 158,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: index == 0 ?ColorManager.primary2 : ColorManager.white ,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color:  index == 0? ColorManager.primary2: ColorManager.grey1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    AppStrings.collegeMentor,
                    style: TextStyle(

                        fontSize: FontSize.s16,
                        color: index == 0
                            ? ColorManager.primary : ColorManager.grey1),
                  ))),
              //
              Container(
                  width: 158,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: index == 0 ?  ColorManager.white:ColorManager.primary2 ,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: index == 0? ColorManager.grey1: ColorManager.primary2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                      child: Text(AppStrings.careerAdvisor,
                          style: TextStyle(
                              fontSize: FontSize.s16,
                              color: index == 0
                                  ?  ColorManager.grey1: ColorManager.primary )))),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p24),
            child: Text(
              AppStrings.nbsp,
              style: TextStyle(
                fontSize: FontSize.s14,
                color: ColorManager.grey1,
              ),
            ),
          ),
          index == 0 ? const CareerAdvisor() : const CollegeMentor(),
          const SizedBox(
            height: AppSize.s16,
          ),
          materialButton(
            text: AppStrings.next,
            color: ColorManager.primary,
            onPressed: () {
              setState(() {
                index = index + 1;
              });
              index != 1 ? Navigator.pushNamed(context, Routs.mentorsRoute): null;
            },
            circle: 100,
            textColor: ColorManager.white,
          )
        ],
      ),
    );
  }
}

class textGetHelp extends StatelessWidget {
  const textGetHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.forBetterExperience,
          style: TextStyle(
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w700,
              color: ColorManager.black),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          AppStrings.grtHelp,
          style: TextStyle(
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w700,
              color: ColorManager.primary),
        ),
      ],
    );
  }
}


