import 'package:flutter/material.dart';
import 'package:foodappui/core/constant/color.dart';

class BottomNavigationBars extends StatelessWidget {
  const BottomNavigationBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      height: 80.0,
      // color: AppColor.white,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,

          )
        ]

      ),
      child: Row( 
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(
          Icons.mail,
          color: AppColor.white,
          size: 35,
           ),
         

            Icon(
          Icons.favorite,
          color: AppColor.white,
          size: 35,
           ),


             Container(
            padding: EdgeInsets.all(10.0),
       
            decoration: BoxDecoration(
              color: AppColor.yellow, 
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [BoxShadow(
                color: AppColor.white.withOpacity(0.2),
                blurRadius: 8,
                spreadRadius: 2
              )]

              
            ),
            child:  Icon(
          Icons.shopping_cart,
          color: AppColor.white,
          size: 35,
           ),

            ),

           

            Icon(
          Icons.notifications,
          color: AppColor.white,
          size: 35,
           ),

            Icon(
          Icons.person,
          color: AppColor.white,
          size: 35,
           ),

      ],),
    );
  }
}