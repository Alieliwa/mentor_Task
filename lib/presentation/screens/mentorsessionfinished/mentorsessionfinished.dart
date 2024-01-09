import 'package:elmentor/presentation/component/bookamentor.dart';
import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:elmentor/presentation/screens/mentorsessionfinished/finished/finishedr_ate.dart';
import 'package:elmentor/presentation/screens/mentorsessionfinished/upcoming/UpComingauto.dart';
import 'package:elmentor/presentation/screens/mentorsessionfinished/upcoming/upcoming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentorSessionFinished extends StatefulWidget {
  const MentorSessionFinished({super.key});

  @override
  State<MentorSessionFinished> createState() => _MentorSessionFinishedState();
}

class _MentorSessionFinishedState extends State<MentorSessionFinished> {
  bool isUpComing = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.mentorSessions,
          style: TextStyle(
            fontSize: FontSize.s16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: AppPadding.p10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap:(){
                    setState(() {
                      isUpComing=true;
                    });
                  },
                  child: Container(
                      width: 158.w,
                      height: 36.h,
                      decoration: ShapeDecoration(
                        color:isUpComing ? ColorManager.white : ColorManager.primary2,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color:  isUpComing
                                ? ColorManager.grey1
                                : ColorManager.primary2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        AppStrings.upcoming,
                        style: TextStyle(
                            fontSize: FontSize.s16,
                            color: isUpComing
                                ? ColorManager.primary
                                : ColorManager.grey1),
                      ))),
                ),
                //
                InkWell(
                  onTap:(){
                    setState(() {
                      isUpComing = false;
                    });
                },
                  child: Container(
                    width: 158.w,
                    height: 36.h,
                    decoration: ShapeDecoration(
                      color: isUpComing
                          ? ColorManager.primary2
                          : ColorManager.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color:
                          isUpComing
                              ? ColorManager.primary2
                              : ColorManager.grey1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        AppStrings.finished,
                        style: TextStyle(
                            fontSize: FontSize.s16,
                            color: isUpComing
                                ? ColorManager.grey1
                                : ColorManager.primary),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          isUpComing ? const UpComingScreen() : const finshed(),
          Spacer(),
          MentorCard(),
        ],
      ),
    );
  }
}
