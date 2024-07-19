import 'package:flutter/material.dart';
import 'package:foodappui/core/constant/color.dart';
import 'package:foodappui/view/widget/Navigation%20Bar/navigaion.dart';
import 'package:foodappui/view/widget/pages/itemOne.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // four tabs
      child: Scaffold(
           backgroundColor: AppColor.primaryColor,
           
           body: SafeArea(child: Padding(
           
            padding:EdgeInsets.only(top: 25.0) ,
          
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 15.0),
      
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
      
            InkWell(
                    onTap: (){},
                    child: Icon(
                      Icons.sort_rounded,
                      color: AppColor.white,
                    ),
                  ),
      
               InkWell(
                    onTap: (){},
                    child: Icon(
                      Icons.search,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ), 
              ),
      
              SizedBox(height: 30.0,),
      
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("Hot & Fast Food", 
                style: TextStyle(
                       color: AppColor.white,
                       fontSize: 32.0,
                       fontWeight: FontWeight.bold
              ), 
              ),
              ),
      
              SizedBox(height: 5.0,),
      
                  Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text("Delievers on Time", 
                style: TextStyle(
                       color: AppColor.white60,
                       fontSize: 22.0,    
              ), 
              ),
              ),
      
              SizedBox(height: 30.0,),

              TabBar(
                       isScrollable: true,
                       indicator: BoxDecoration(), // btsheel lsha7ta ta7t lesm
                       labelStyle: TextStyle(fontSize: 20.0),
                       labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                       labelColor: AppColor.white,

                       tabs: [
                               Tab(text: "Burger",),
                               Tab(text: "Pizza",),
                               Tab(text: "Cheese",),
                               Tab(text: "Pasta",),
                             ],
                       ),

                 Flexible(
                  flex: 1,

                  child: TabBarView(children: [
                    // Container(color: Colors.red,),
                    // Container(color: Colors.green,),
                    // Container(color: Colors.red,),
                    // Container(color: Colors.red,),

                    ItemOne(),
                    ItemOne(),
                    ItemOne(),
                    ItemOne(),


                  ],
                  
                  
                  ),
                      
                       
                       
                       ),
                    

      
              
      
            ],),

          
      
           
           
           )),
           bottomNavigationBar: BottomNavigationBars(),
      
      
      ),
    );
  }
}