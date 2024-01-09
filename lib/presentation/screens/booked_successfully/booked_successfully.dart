import 'package:elmentor/presentation/component/buildbutton.dart';
import 'package:elmentor/presentation/component/done.dart';
import 'package:elmentor/presentation/component/paywidget.dart';
import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/routs_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookedSuccessfully extends StatelessWidget {
  const BookedSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.bookSession,
          style: TextStyle(
            fontSize: FontSize.s16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(child: Padding(
            padding:  EdgeInsets.only(top: AppPadding.p24.h),
            child: Done(),
          )),
          SizedBox(height: AppPadding.p16.h,),
          Text(
            AppStrings.successfully,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorManager.green1,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: AppPadding.p36.h,),
          Container(
            padding: const EdgeInsets.all(AppPadding.p16),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.w, color: Color(0xFFE7E9EC)),
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 295.w,
                  height: 90.h,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1.50.w,
                        top: 3.h,
                        child: Container(
                          width: 28.w,
                          height: 28.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 5.15.w,
                                top: 0.82.h,
                                child: Container(
                                  width: 17.71.w,
                                  height: 26.35.h,
                                  child: Stack(children: [
                                    Image.asset("assets/image/img_8.png",
                                      width: 28.w,
                                      height: 28.h,
                                    )
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: AppPadding.p36),
                        child: Container(
                          // height: 73.h,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'You booked a session with ',
                                        style: TextStyle(
                                          color: Color(0xFF3E4450),
                                          fontSize: FontSize.s14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Ahmad Mahmoud',
                                        style: TextStyle(
                                          color: Color(0xFF851FE7),
                                          fontSize: FontSize.s14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                               SizedBox(height: 4),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Tue 8 Nov at 8:00 pm',
                                  style: TextStyle(
                                    color: Color(0xFF252830),
                                    fontSize: FontSize.s18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: AppPadding.p36.h,),
          Paywidget(),
          SizedBox(height: AppPadding.p36.h,),
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p24,left: AppPadding.p24),
            child: materialButton(
              text: AppStrings.done,
              color: ColorManager.primary,
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routs.home);
              },
              circle: 100.r,
              textColor: ColorManager.white,
            ),
          )
        ],
      ),
    );
  }
}
