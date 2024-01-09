import 'package:elmentor/presentation/component/buildbutton.dart';
import 'package:elmentor/presentation/component/ratting_bar.dart';
import 'package:elmentor/presentation/component/search_bar.dart';
import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottomsheet extends StatefulWidget {
  Bottomsheet({
    super.key,
  });

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  double? rate = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: AppPadding.p12),
          child: Text(
            AppStrings.review,
            style: TextStyle(
              color: Colors.black,
              fontSize: FontSize.s24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p12),
          child: SizedBox(
            width: 145.w,
            child: Text(
              AppStrings.mandatory,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: FontSize.s17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Container(
                  decoration: ShapeDecoration(
                    color: Color(0xFFE7E9EC),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.45,
                      pointRounding: 0.52,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                  child: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    rate = rating;
                  });
                },
              ),
              Text(
                "${rate} \/ 5",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: FontSize.s14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(AppPadding.p8),
          child: Container(
            width: double.infinity,
            // height: 180.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: buildTextFormField(
              onSubmited: () {},
              hintText:
                  "Your review - ex. Mentor has come in time or he has valuable information.",
              max: 3,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: AppPadding.p24, right: AppPadding.p24, top: AppPadding.p10),
          child: Container(
              width: double.infinity,
              // height: 180.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: materialButton(
                text: AppStrings.submit,
                color: ColorManager.primary,
                onPressed: () {},
                circle: 100,
                textColor: ColorManager.white,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: AppPadding.p24, right: AppPadding.p24, top: AppPadding.p10),
          child: Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: ColorManager.primary),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: materialButton(
                text: AppStrings.cancel,
                color: ColorManager.white,
                onPressed: () {},
                circle: 100,
                textColor: ColorManager.primary,
              )),
        ),
      ],
    );
  }
}
// decoration: ShapeDecoration(
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   side: BorderSide(width: 1, color: Color(0xFFE7E9EC)),
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//               ),
