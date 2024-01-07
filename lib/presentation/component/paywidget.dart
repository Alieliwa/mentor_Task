import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Paywidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Color(0xFFF3E9FD)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 89.h,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1.06,
                        top: 1.62,
                        child: Container(
                          width: 33.88,
                          height: 32.77,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 33.88,
                                  height: 32.77,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 33.88,
                                          height: 29.89,
                                          child: Stack(children: [
                                            Image.asset(
                                                "assets/image/img_10.png")
                                          ]),
                                        ),
                                      ),
                                      Positioned(
                                        left: 3.22,
                                        top: 26.39,
                                        child: Container(
                                          width: 25.97,
                                          height: 2.29,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 21.56,
                                                top: -0,
                                                child: Container(
                                                  width: 4.41,
                                                  height: 2.29,
                                                  child: Stack(children: []),
                                                ),
                                              ),
                                              Positioned(
                                                left: 14.38,
                                                top: 0,
                                                child: Container(
                                                  width: 4.41,
                                                  height: 2.29,
                                                  child: Stack(children: []),
                                                ),
                                              ),
                                              Positioned(
                                                left: 7.19,
                                                top: 0,
                                                child: Container(
                                                  width: 4.41,
                                                  height: 2.29,
                                                  child: Stack(children: []),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 4.41,
                                                  height: 2.29,
                                                  child: Stack(children: []),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 3.23,
                                        top: 15.99,
                                        child: Container(
                                          width: 6.42,
                                          height: 4.77,
                                          child: Stack(children: []),
                                        ),
                                      ),
                                      Positioned(
                                        left: 23.30,
                                        top: 16.79,
                                        child: Container(
                                          width: 5.89,
                                          height: 2.88,
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ],
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
                const SizedBox(width: 8),
                Container(
                  width: 290,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 301,
                        height: 41,
                        child: Text(
                          'Act quickly to make your payment within the next hour to secure your session – Don\'t miss out!',
                          style: TextStyle(
                            color: Color(0xFF851FE7),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Click here to pay',
                                style: TextStyle(
                                  color: Color(0xFF851FE7),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              width: 16,
                              height: 16,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Stack(children: [
                                Image.asset("assets/image/img_11.png")
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
