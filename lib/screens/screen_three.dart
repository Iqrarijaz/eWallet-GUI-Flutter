import 'dart:async';
import 'package:ewallet/screens/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../constants.dart';

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children:  [

            const SizedBox(height:60),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                  height:250,width:250,
                  child: Image.asset("assets/images/logo3.png")),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Make online Payment & Enjoy ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:18, fontWeight:FontWeight.bold,
                    color:Color(0xff4c39a3)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:8.0,vertical:24),
              child: Text(
                "We can do any online payment from \n card or account. Just scan the QR \ncode & enjoy ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:16,
                  color:Color(0xffacacb6),
                ),
              ),
            ),
            const SizedBox(height:10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(height:10,width:10,
                    decoration:  BoxDecoration(
                      color:const Color(0xfffc8c5c),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(height:10,width:10,
                    decoration:  BoxDecoration(
                      color:const Color(0xfffc8c5c),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(height:10,width:20,
                    decoration:  BoxDecoration(
                      color:const Color(0xfffc8c5c),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: ScreenTwo()));},
                  child: const Text("Previous",style:TextStyle(fontSize:16,
                      color:Color(0xffacacb6)
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: Container(
                  height:50,
                  width:MediaQuery.of(context).size.width * 0.80,
                decoration:BoxDecoration(
                    color:Color(0xff282058),
                    borderRadius:BorderRadius.circular(20)
                ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text("Get Started",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize:18, fontWeight:FontWeight.bold,
                            color:Colors.white,),
              ),
                  ),
            )
            )
          ],
        ),
      ),
    );
  }
}
