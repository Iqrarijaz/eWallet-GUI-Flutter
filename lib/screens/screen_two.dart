
import 'package:ewallet/screens/screen_one.dart';
import 'package:ewallet/screens/screen_three.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children:  [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: ScreenThree()));},
                  child: const Text("Skip",style:TextStyle(fontSize:16,
                      color:Color(0xffacacb6)
                  )),
                ),
              ),
            ),
            const SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                  height:250,width:250,
                  child: Image.asset("assets/images/logo2.png")),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Track your Activity  ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:18, fontWeight:FontWeight.bold,
                    color:Color(0xff4c39a3)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:8.0,vertical:24),
              child: Text(
                "We can track your income, expenses \n activity & can know all statics",
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
                  child: Container(height:10,width:20,
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
                )
              ],),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: ScreenOne()));},
                  child: const Text("Previous",style:TextStyle(fontSize:16,
                      color:Color(0xffacacb6)
                  )),
                ),
              ),
            ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: ScreenThree()));},
                    child: const Text("Next",style:TextStyle(fontSize:16,
                        color:Color(0xffacacb6)
                    )),
                  ),
                ),
              ),
            ]),

          ],
        ),
      ),
    );
  }
}
