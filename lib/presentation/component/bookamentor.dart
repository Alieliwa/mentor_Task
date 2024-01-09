import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Color(0xFFF3E9FD),
        border: Border(
          left: BorderSide(color: Color(0xFFCEA5F5)),
          top: BorderSide(color: Color(0xFFCEA5F5)),
          right: BorderSide(color: Color(0xFFCEA5F5)),
          bottom: BorderSide(width: 6, color: Color(0xFFCEA5F5)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p12),
        child: Row(
          children: [
          Image.asset("assets/image/img_13.png",
          width: 49.w,
          height: 32.h,
        ),
        Text(
          'Get the right support ',
          style: TextStyle(
            color: Color(0xFF252830),
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 11.52, vertical: 5.76),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFF851FE7),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.82, color: Color(0xFF851FE7)),
                  borderRadius: BorderRadius.circular(6.58),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x0C101828),
                    blurRadius: 2,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Book a Mentor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 14.w,
                    height: 14.w,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(children: [
                      Image.asset("assets/image/img_11.png",color: ColorManager.white,)
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
        ],
      ),
    ),

    );
  }
}
