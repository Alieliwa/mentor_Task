import 'package:elmentor/presentation/component/bottomsheet.dart';
import 'package:elmentor/presentation/component/buildbutton.dart';
import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/routs_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:elmentor/presentation/screens/mentorsessionfinished/upcoming/UpComingauto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpComingScreen extends StatefulWidget {
  const UpComingScreen({super.key});

  @override
  State<UpComingScreen> createState() => _UpComingScreenState();
}

class _UpComingScreenState extends State<UpComingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p40),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  textAlign: TextAlign.start,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Mentor Session with ',
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Ahmad Maged',
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
                        Icon(Icons.calendar_month,color: ColorManager.primary,),
                      ]),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '5 Nov 2023',
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
                        Icon(Icons.watch_later_outlined,color: ColorManager.primary,),
                      ]),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '01:00 pm - 03:00 pm',
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppPadding.p12.h,),
                materialButton(
                  text: AppStrings.rateRheSession,
                  color: ColorManager.primary,
                  onPressed: () {
                    setState(() {

                      showModalBottomSheet(context: context,builder:(BuildContext context) {
                        return Bottomsheet();
                      });
                    });
                    // Navigator.pushNamed(context, Routs.mentorSessionFinished);
                  },
                  circle: 25,
                  textColor: ColorManager.white,
                ),
              ],
            ),
            SizedBox(height: AppPadding.p20.h,),
            UpComingAutoScreen(),
          ],
        ),
      ),
    );
  }
}