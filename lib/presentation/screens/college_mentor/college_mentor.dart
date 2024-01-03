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


  List<String>career = ["CmputerScince","electricengneer",];
  List<String> job = ["CmputerScince","electricengneer",];

  TextEditingController careerController = TextEditingController();
  TextEditingController jobController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: AppPadding.p24,left: AppPadding.p24,bottom: AppPadding.p6),
          child: Text(AppStrings.careerField,
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
          margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*.024,right: MediaQuery.of(context).size.width*.024 ),
          child: TextFormField(

            keyboardType: TextInputType.text,
            style: TextStyle(color: ColorManager.grey3,fontSize: AppSize.s12,fontWeight: FontWeight.bold),
            controller: careerController,
            // validator: (value){
            //   if(value!.isEmpty){
            //     return "";
            //   }
            //   return null;
            // },
            onTap: ()=>Selectcareer(context),
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
              ),

              contentPadding: EdgeInsets.only(right: 15,left: 15,top: 0,bottom: 0),
              enabledBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: ColorManager.grey4)
              ),
              focusedBorder:  new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.black12)
              ),
              focusedErrorBorder:new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)
              ),
              errorBorder:new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)
              ),
              hintText:AppStrings.textField,
              errorStyle: TextStyle(fontSize: 0,height: 0),
              counterStyle:TextStyle(fontSize: 0,height: 0,color: ColorManager.grey3),
              hintStyle: TextStyle(color: ColorManager.grey3,fontSize: FontSize.s16,fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: AppPadding.p24,left: AppPadding.p24,bottom: AppPadding.p6,top: AppPadding.p16),
          child: Text(AppStrings.jobTitle,
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
          margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*.024,right: MediaQuery.of(context).size.width*.024 ),
          child: TextFormField(

            keyboardType: TextInputType.text,
            style: TextStyle(color: ColorManager.grey3,fontSize: AppSize.s12,fontWeight: FontWeight.bold),
            controller: jobController,
            // validator: (value){
            //   if(value!.isEmpty){
            //     return "";
            //   }
            //   return null;
            // },
            onTap: ()=>Selectjob(context),
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
              ),
              contentPadding: EdgeInsets.only(right: 15,left: 15,top: 0,bottom: 0),
              enabledBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: ColorManager.grey4)
              ),
              focusedBorder:  new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.black12)
              ),
              focusedErrorBorder:new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)
              ),
              errorBorder:new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1000),
                  borderSide: BorderSide(color: Colors.red)
              ),
              hintText:AppStrings.textTitle,
              errorStyle: TextStyle(fontSize: 0,height: 0),
              counterStyle:TextStyle(fontSize: 0,height: 0,color: ColorManager.grey3),
              hintStyle: TextStyle(color: ColorManager.grey3,fontSize: FontSize.s16,fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }

  Selectcareer(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => Dialog(
          child:  Container(
            width: MediaQuery.of(context).size.width*.4,
            decoration: BoxDecoration(color: Colors.white,
              // borderRadius: BorderRadius.all(Radius.circular(20))
              // border: Border.all(color: Colors.black12,width: 2.0)
            )
            ,padding: EdgeInsets.only(
            top:  MediaQuery.of(context).size.height*0.01,
            bottom: MediaQuery.of(context).size.height*0.01,
            left: MediaQuery.of(context).size.width*0.05,
            right: MediaQuery.of(context).size.width*0.05,
          ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: career.length,
                    itemBuilder: (context,index){
                      return InkWell(
                          onTap: (){
                            setState(() {
                              careerController.text=career[index];
                            });
                            Navigator.pop(context);
                          },
                          child:Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.005,top: MediaQuery.of(context).size.height*.005),
                                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.005,top: MediaQuery.of(context).size.height*.005),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    //color: Color(h.mainColor)
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(career[index],style: TextStyle(color: Colors.black),)),
                              career.length-1==index?SizedBox():Container(height: 1,width: MediaQuery.of(context).size.width,color:Theme.of(context).primaryColor,)
                            ],
                          )
                      );
                    },
                  ),
                ],
              ),
            ),

          ),
        ));
  }

  Selectjob(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => Dialog(
          child:  Container(
            width: MediaQuery.of(context).size.width*.4,
            decoration: BoxDecoration(color: Colors.white,
              // borderRadius: BorderRadius.all(Radius.circular(20))
              // border: Border.all(color: Colors.black12,width: 2.0)
            )
            ,padding: EdgeInsets.only(
            top:  MediaQuery.of(context).size.height*0.01,
            bottom: MediaQuery.of(context).size.height*0.01,
            left: MediaQuery.of(context).size.width*0.05,
            right: MediaQuery.of(context).size.width*0.05,
          ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: job.length,
                    itemBuilder: (context,index){
                      return InkWell(
                          onTap: (){
                            setState(() {
                              jobController.text=job[index];
                            });
                            Navigator.pop(context);
                          },
                          child:Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.005,top: MediaQuery.of(context).size.height*.005),
                                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.005,top: MediaQuery.of(context).size.height*.005),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    //color: Color(h.mainColor)
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(career[index],style: TextStyle(color: Colors.black),)),
                              job.length-1==index?SizedBox():Container(height: 1,width: MediaQuery.of(context).size.width,color:Theme.of(context).primaryColor,)
                            ],
                          )
                      );
                    },
                  ),
                ],
              ),
            ),

          ),
        ));
  }
}
