import 'package:flutter/material.dart';
import 'package:foodappui/core/constant/color.dart';
import 'package:foodappui/core/constant/imageasset.dart';
import 'package:foodappui/core/constant/routes.dart';
import 'package:get/get.dart';

class Itempage extends StatelessWidget {
  const Itempage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColor.white,
              )),
          actions: const [
            Icon(
              Icons.shopping_cart,
              color: AppColor.white,
            )
          ]),
      backgroundColor: AppColor.primaryColor,
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset(AppImageAsset.image1),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 15.0),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Hot & Fresh Burger",
                        style: TextStyle(
                            color: AppColor.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      )),
                  const SizedBox(
                    width: 35,
                  ),
                  InkWell(
                    onTap: () {
                      print("add");
                    },
                    child: Container(
                      // padding: EdgeInsets.only(bottom: 20.0),
                      alignment: Alignment.center,
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10.0)),

                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    //    padding: EdgeInsets.only(bottom: 20.0),
                    alignment: Alignment.center,

                    child: Text(
                      "2",
                      style: TextStyle(color: AppColor.white, fontSize: 20.0),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      print("minus");
                    },
                    child: Container(
                      padding: EdgeInsets.only(bottom: 20.0),
                      alignment: Alignment.center,
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Icon(
                        Icons.minimize_outlined,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "We Bring You the burger with cheese survedwith union, cold drink and fries. We Bring You the burger with cheese survedwith union, cold drink and fries. We Bring You the burger with cheese survedwith union, cold drink and fries.",
                style: TextStyle(color: AppColor.white),
              )
            ],
          ),
          SizedBox(
            height: 60.0,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                // height: 10,
                padding: EdgeInsets.only(left: 15.0),
                child: Column(
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(
                          color: AppColor.white60,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Text(
                      "\$100",
                      style: TextStyle(color: AppColor.white, fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 90.0,
              ),
              Container(
                height: 60.0,
                width: 120,
                padding: EdgeInsets.only(right: 20.0),
                decoration: BoxDecoration(
                    color: AppColor.orange,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    )),
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Buy Now",
                        style: TextStyle(color: AppColor.white),
                      ),
                      SizedBox(width: 9),
                      Icon(
                        Icons.shopping_cart,
                        color: AppColor.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
