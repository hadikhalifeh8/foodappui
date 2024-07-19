import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:foodappui/core/constant/color.dart';
import 'package:foodappui/core/constant/imageasset.dart';
import 'package:foodappui/core/constant/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ItemOne extends StatelessWidget {
  const ItemOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: GridView.builder(
          itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => Container(
                //padding:const EdgeInsets.symmetric(),
                //margin:const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          color: AppColor.black,
                          spreadRadius: 1,
                          blurRadius: 8),
                    ]),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoute.itemPage);
                      },
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        height: 115,
                        width: 120,

                        //margin: EdgeInsets.all(10.0),
                        child: Image.asset(AppImageAsset.image1),
                      ),
                    ),
                    // Text("Burger", style: TextStyle(color: AppColor.white),),
                    // Text("Hot Burger", style: TextStyle(color: AppColor.white60, fontSize: 12),),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      // alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Burgers",
                              style: TextStyle(color: AppColor.white),
                            ),
                          ),

                          Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 20),
                              child: Text("Burger",
                                  style: TextStyle(color: AppColor.white60))),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                //   alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(left: 10),
                                child: Text("\$55",
                                    style: TextStyle(color: AppColor.white60)),
                              ),
                              Container(
                                //  alignment: Alignment.bottomRight,
                                padding: EdgeInsets.only(right: 5),
                                child: Icon(
                                  CupertinoIcons.cart_badge_plus,
                                  color: AppColor.white,
                                ),
                              ),
                            ],
                          ),

                          //    Container(
                          //    alignment: Alignment.bottomRight,
                          // padding:EdgeInsets.only(right: 10),
                          // child: Icon(CupertinoIcons.cart_badge_plus),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
    );
  }
}
