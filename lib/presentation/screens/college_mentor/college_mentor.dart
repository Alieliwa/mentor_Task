import 'package:elmentor/presentation/resources/color_manager.dart';
import 'package:elmentor/presentation/resources/fonts_manager.dart';
import 'package:elmentor/presentation/resources/string_manager.dart';
import 'package:elmentor/presentation/resources/valuse_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CollegeMentor extends StatefulWidget {
  const CollegeMentor({super.key});

  @override
  State<CollegeMentor> createState() => _CollegeMentorState();
}

class _CollegeMentorState extends State<CollegeMentor> {
  List<String> college = [
    "CmputerScince",
    "electricengneer",
  ];
  List<String> univesrty = [
    "CmputerScince",
    "electricengneer",
  ];
  List<String> departMent = [
    "CmputerScince",
    "electricengneer",
  ];

  TextEditingController collegeController = TextEditingController();
  TextEditingController univesrtyController = TextEditingController();
  TextEditingController departMentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              right: AppPadding.p24,
              left: AppPadding.p24,
              bottom: AppPadding.p6),
          child: Text(
            AppStrings.whichCollege,
            style: TextStyle(
              color: ColorManager.grey2,
              fontSize: FontSize.s14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: AppSize.s48,
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .024,
              right: MediaQuery.of(context).size.width * .024),
          child: TextFormField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: ColorManager.grey3,
                fontSize: AppSize.s12,
                fontWeight: FontWeight.bold),
            controller: collegeController,
            // validator: (value){
            //   if(value!.isEmpty){
            //     return "";
            //   }
            //   return null;
            // },
            onTap: () => Selectcollege(context),
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
              ),
              contentPadding:
                  EdgeInsets.only(right: 15, left: 15, top: 0, bottom: 0),
              enabledBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: ColorManager.grey4)),
              focusedBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.black12)),
              focusedErrorBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)),
              errorBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)),
              hintText: AppStrings.college,
              errorStyle: TextStyle(fontSize: 0, height: 0),
              counterStyle:
                  TextStyle(fontSize: 0, height: 0, color: ColorManager.grey3),
              hintStyle: TextStyle(
                  color: ColorManager.grey3,
                  fontSize: FontSize.s16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              right: AppPadding.p24,
              left: AppPadding.p24,
              bottom: AppPadding.p6,
              top: AppPadding.p16),
          child: Row(
            children: [
              Text(
                AppStrings.whichUniversity,
                style: TextStyle(
                  color: ColorManager.grey2,
                  fontSize: FontSize.s14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                AppStrings.optional,
                style: TextStyle(
                  color: ColorManager.grey5,
                  fontSize: FontSize.s14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: AppSize.s48,
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .024,
              right: MediaQuery.of(context).size.width * .024),
          child: TextFormField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: ColorManager.grey3,
                fontSize: AppSize.s12,
                fontWeight: FontWeight.bold),
            controller: univesrtyController,
            // validator: (value){
            //   if(value!.isEmpty){
            //     return "";
            //   }
            //   return null;
            // },
            onTap: () => Selectunivesrty(context),
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
              ),
              contentPadding:
                  EdgeInsets.only(right: 15, left: 15, top: 0, bottom: 0),
              enabledBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: ColorManager.grey4)),
              focusedBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.black12)),
              focusedErrorBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)),
              errorBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)),
              hintText: AppStrings.college,
              errorStyle: TextStyle(fontSize: 0, height: 0),
              counterStyle:
                  TextStyle(fontSize: 0, height: 0, color: ColorManager.grey3),
              hintStyle: TextStyle(
                  color: ColorManager.grey3,
                  fontSize: FontSize.s16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              right: AppPadding.p24,
              left: AppPadding.p24,
              bottom: AppPadding.p6,
              top: AppPadding.p16),
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                text: AppStrings.department,
                style: TextStyle(
                  color: ColorManager.grey2,
                  fontSize: FontSize.s14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: AppStrings.optional,
                style: TextStyle(
                  color: ColorManager.grey5,
                  fontSize: FontSize.s14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: AppSize.s48,
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .024,
              right: MediaQuery.of(context).size.width * .024),
          child: TextFormField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: ColorManager.grey3,
                fontSize: AppSize.s12,
                fontWeight: FontWeight.bold),
            controller: departMentController,
            // validator: (value){
            //   if(value!.isEmpty){
            //     return "";
            //   }
            //   return null;
            // },
            onTap: () => Selectcollege(context),
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
              ),
              contentPadding:
                  EdgeInsets.only(right: 15, left: 15, top: 0, bottom: 0),
              enabledBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: ColorManager.grey4)),
              focusedBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.black12)),
              focusedErrorBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)),
              errorBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)),
              hintText: AppStrings.departMent,
              errorStyle: TextStyle(fontSize: 0, height: 0),
              counterStyle:
                  TextStyle(fontSize: 0, height: 0, color: ColorManager.grey3),
              hintStyle: TextStyle(
                  color: ColorManager.grey3,
                  fontSize: FontSize.s16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }

//Row(
//             children: [
//               Text(AppStrings.department,
//                 style: TextStyle(
//                   color: ColorManager.grey2,
//                   fontSize: FontSize.s14.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               Text(AppStrings.optional,
//                 style: TextStyle(
//                   color: ColorManager.grey5,
//                   fontSize: FontSize.s14.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ],
//           ),
  Selectcollege(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => Dialog(
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.all(Radius.circular(20))
                  // border: Border.all(color: Colors.black12,width: 2.0)
                ),
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: college.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  collegeController.text = college[index];
                                });
                                Navigator.pop(context);
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005),
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        //color: Color(h.mainColor)
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        college[index],
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  college.length - 1 == index
                                      ? SizedBox()
                                      : Container(
                                          height: 1,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: Theme.of(context).primaryColor,
                                        )
                                ],
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }

  Selectunivesrty(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => Dialog(
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.all(Radius.circular(20))
                  // border: Border.all(color: Colors.black12,width: 2.0)
                ),
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: univesrty.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  univesrtyController.text = univesrty[index];
                                });
                                Navigator.pop(context);
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005),
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        //color: Color(h.mainColor)
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        univesrty[index],
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  univesrty.length - 1 == index
                                      ? SizedBox()
                                      : Container(
                                          height: 1,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: Theme.of(context).primaryColor,
                                        )
                                ],
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }

  SelectdepartMent(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => Dialog(
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.all(Radius.circular(20))
                  // border: Border.all(color: Colors.black12,width: 2.0)
                ),
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: departMent.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  departMentController.text = departMent[index];
                                });
                                Navigator.pop(context);
                              },
                              child: Column(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005),
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        //color: Color(h.mainColor)
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        departMent[index],
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  departMent.length - 1 == index
                                      ? SizedBox()
                                      : Container(
                                          height: 1,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: Theme.of(context).primaryColor,
                                        )
                                ],
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
