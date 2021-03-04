import 'package:flutter/cupertino.dart';
import 'package:onboardinpage/model/onboardingmodel.dart';
//import 'package:get/state_manager.dart';
//import 'package:get/utils.dart';
//import 'package:get/state_manager.dart';

class onboardingController {
   // extends GetxController
//var selectedPage = 0.obs;
//bool get isLastPage  => selectedPage.value == OnboardingCont.length -1;
var pageController= PageController();



  List<onboardingModel> OnboardingCont= [
    onboardingModel('assets/ppcon1.jpg','My first Page','with Hardworking, and dedication we can attain our greatest height'),

    onboardingModel('assets/rdcon1.jpg','My Second Page','if you are looking for a symbol of Hardwork see CR7'),


    onboardingModel('assets/rdcon2.jpg','My third Page','with Hardworking, and dedication,')
  ];
}