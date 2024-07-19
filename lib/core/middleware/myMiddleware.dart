
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:foodappui/core/constant/routes.dart';
import 'package:foodappui/core/services/services.dart';

class MyMiddleware extends GetMiddleware{
  
  @override
  int? get priority => 1 ;

   MyServices  myservices = Get.find();

  @override
  RouteSettings? redirect(String? route){

      if(myservices.sharedPreferences.getString("step") == "2")
       {
         return const RouteSettings(name: AppRoute.home);
       }

    if(myservices.sharedPreferences.getString("step") == "1")
    {
     return const RouteSettings(name: AppRoute.home);
    }

   
    return null;
  }
}