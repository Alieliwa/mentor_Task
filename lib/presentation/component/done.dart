import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Done extends StatelessWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 185.93,
          height: 180,
          child: Stack(
            children: [
              Positioned(
                left: 24.97,
                top: 20,
                child: Container(
                  width: 141,
                  height: 141,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.89, 0.45),
                      end: Alignment(-0.89, -0.45),
                      colors: [Color(0xFF0B6F40), Color(0xFF12B76A)],
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 170.93,
                top: 20,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: ShapeDecoration(
                    color: Color(0xFF72D4A6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFF72D4A6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 5,
                top: 128,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: ShapeDecoration(
                    color: Color(0xFF72D4A6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 163,
                top: 158,
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: Color(0xFF72D4A6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 65.97,
                top: 61,
                child: Container(
                  width: 59,
                  height: 59,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: [
                    Image.asset(
                      "assets/image/img_7.png",
                      width: 59.w,
                      height: 59.h,
                    )
                  ]),
                ),
              ),
              Positioned(
                left: 104,
                top: 2,
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: Color(0xFF72D4A6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 173,
                child: Container(
                  width: 7,
                  height: 7,
                  decoration: ShapeDecoration(
                    color: Color(0xFF72D4A6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 121,
                top: 170,
                child: Container(
                  width: 2,
                  height: 2,
                  decoration: ShapeDecoration(
                    color: Color(0xFF72D4A6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 168,
                top: 108,
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: Color(0xFF72D4A6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 74,
                child: Container(
                  width: 2,
                  height: 2,
                  decoration: ShapeDecoration(
                    color: Color(0xFF72D4A6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
