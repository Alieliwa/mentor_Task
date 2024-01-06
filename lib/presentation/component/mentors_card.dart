import 'package:elmentor/presentation/resources/routs_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';

class MentorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushReplacementNamed(context, Routs.detailsRoute);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: AppPadding.p24,left: AppPadding.p24,bottom: AppPadding.p24 ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: AppSize.s118,
              padding: const EdgeInsets.all(16),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE7E9EC)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 76,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/img_4.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.07,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(142.11),
                      ),
                    ),
                  ),
                  SizedBox(width: AppSize.s16,),
                  Container(
                    height: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 47,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 211,
                                height: 33,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 156,
                                      height: 21,
                                      child: Text(
                                        'Karma Ahmad',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 31),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            child: Stack(children: [
                                                Icon(Icons.chevron_right)
                                                ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Computer Science ',
                                style: TextStyle(
                                  color: Color(0xFF667085),
                                  fontSize: 14,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  height: 0.07,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '4.0',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w500,
                                  height: 0.15,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.99,
                                      height: 20.99,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0.52,
                                            child: Container(
                                              width: 20.99,
                                              height: 20.99,
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
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 20.99,
                                              height: 20.99,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0.52,
                                                    child: Container(
                                                      width: 20.99,
                                                      height: 20.99,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFF9A63A),
                                                        shape: StarBorder(
                                                          points: 5,
                                                          innerRadiusRatio: 0.45,
                                                          pointRounding: 0.52,
                                                          valleyRounding: 0,
                                                          rotation: 0,
                                                          squash: 0,
                                                        ),
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
                                    Container(
                                      width: 20.99,
                                      height: 20.99,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0.52,
                                            child: Container(
                                              width: 20.99,
                                              height: 20.99,
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
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 20.99,
                                              height: 20.99,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0.52,
                                                    child: Container(
                                                      width: 20.99,
                                                      height: 20.99,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFF9A63A),
                                                        shape: StarBorder(
                                                          points: 5,
                                                          innerRadiusRatio: 0.45,
                                                          pointRounding: 0.52,
                                                          valleyRounding: 0,
                                                          rotation: 0,
                                                          squash: 0,
                                                        ),
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
                                    Container(
                                      width: 20.99,
                                      height: 20.99,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0.52,
                                            child: Container(
                                              width: 20.99,
                                              height: 20.99,
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
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 20.99,
                                              height: 20.99,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0.52,
                                                    child: Container(
                                                      width: 20.99,
                                                      height: 20.99,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFF9A63A),
                                                        shape: StarBorder(
                                                          points: 5,
                                                          innerRadiusRatio: 0.45,
                                                          pointRounding: 0.52,
                                                          valleyRounding: 0,
                                                          rotation: 0,
                                                          squash: 0,
                                                        ),
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
                                    Container(
                                      width: 20.99,
                                      height: 20.99,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0.52,
                                            child: Container(
                                              width: 20.99,
                                              height: 20.99,
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
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 20.99,
                                              height: 20.99,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0.52,
                                                    child: Container(
                                                      width: 20.99,
                                                      height: 20.99,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFF9A63A),
                                                        shape: StarBorder(
                                                          points: 5,
                                                          innerRadiusRatio: 0.45,
                                                          pointRounding: 0.52,
                                                          valleyRounding: 0,
                                                          rotation: 0,
                                                          squash: 0,
                                                        ),
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
                                    Container(
                                      width: 20.99,
                                      height: 20.99,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0.52,
                                            child: Container(
                                              width: 20.99,
                                              height: 20.99,
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
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 1.05,
                                              height: 20.99,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0.52,
                                                    child: Container(
                                                      width: 20.99,
                                                      height: 20.99,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFF252830),
                                                        shape: StarBorder(
                                                          points: 5,
                                                          innerRadiusRatio: 0.45,
                                                          pointRounding: 0.52,
                                                          valleyRounding: 0,
                                                          rotation: 0,
                                                          squash: 0,
                                                        ),
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
      ),
    );
  }
}