import 'package:elmentor/presentation/component/buildbutton.dart';
import 'package:elmentor/presentation/component/frame.dart';
import 'package:elmentor/presentation/component/progress_bar.dart';
import 'package:elmentor/presentation/component/rating.dart';
import 'package:elmentor/presentation/component/tablecalender.dart';
import 'package:elmentor/presentation/component/time.dart';
import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/routs_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.details,
          style: TextStyle(
            fontSize: FontSize.s16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: AppPadding.p24,left: AppPadding.p24),
        child: ListView(
          children: [
            progressBar(currentStep: 80,),
            SizedBox(
              height: AppSize.s31,
            ),
            Frame(),
            SizedBox(
              height: AppSize.s16,
            ),
            Row(
              children: [
                Rating(),
                Text(AppStrings.rate,
                  style: TextStyle(
                      fontSize: FontSize.s14,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.black
                  ),),
              ],
            ),
            SizedBox(
              height: AppSize.s16,
            ),
            Text(AppStrings.availableSessions,
            style: TextStyle(
              fontSize: FontSize.s20,
              fontWeight: FontWeight.w700,
              color: ColorManager.primary
            ),
            ),
            SizedBox(
              height: AppSize.s16,
            ),
            Text(AppStrings.date,
              style: TextStyle(
                  fontSize: FontSize.s16,
                  fontWeight: FontWeight.w700,
                  color: ColorManager.black
              ),
            ),
            Text(AppStrings.availableDate,
              style: TextStyle(
                  fontSize: FontSize.s14,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.grey1
              ),
            ),
            // timePicker
            TableCalender(),
            Text(AppStrings.time,
              style: TextStyle(
                  fontSize: FontSize.s16,
                  fontWeight: FontWeight.w700,
                  color: ColorManager.black
              ),
            ),
            Text(AppStrings.sessionDuration,
              style: TextStyle(
                  fontSize: FontSize.s14,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.grey1
              ),
            ),
            Timekk(),
            materialButton(
              text: AppStrings.book,
              color: ColorManager.primary,
              onPressed: () {
                Navigator.pushNamed(context, Routs.paymentRoute);
              },
              circle: 100,
              textColor: ColorManager.white,
            ),
            SizedBox(height: AppSize.s10.h,)
          ],
        ),
      ),
    );
  }
}
