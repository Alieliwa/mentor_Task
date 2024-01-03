import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';

class sessionContainer extends StatelessWidget {
  const sessionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 36,
      color: ColorManager.primary2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/image/img_1.png",
          width: 16.0,
            height: 16.0,
          ),
         const SizedBox(width: AppSize.s8,),
          Text(
            AppStrings.premiumUserFreeSession,
            style: TextStyle(
              fontSize: FontSize.s12,
              color: ColorManager.primary,
              fontWeight: FontWeight.w700
            ),
                ),
        ],
      ),
    );
  }
}
