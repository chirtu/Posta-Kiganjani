import 'package:chituposta/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../accessories/slider.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final List<String> imgList = [
    'assets/cas.png',
    'assets/cas.png',
    'assets/cas.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 75,right: 20, left: 20,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: kprimarycolor
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0,left: 18),
                  child: Text(" Posta Kiganjani",style: TextStyle(fontSize: 22,color: kwhite,fontWeight: FontWeight.bold),
                    textAlign:TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Posta Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: kprimarycolor),),
              SizedBox(height: 10,),
              Divider(
                height: 6,
                thickness: 3,
                color: kyellow,
              ),
              SizedBox(height: 10,),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(0),
                // crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: <Widget>[
                 Card(
                   elevation: 9,
                   shadowColor: kblack,
                   surfaceTintColor: kblack,
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset("assets/l.png"),
                         Text("Track item",style: TextStyle(fontSize: 14,color: kprimarycolor),)
                       ],
                     ),
                   ),
                 ),
                 Card(
                   elevation: 9,
                   shadowColor: kblack,
                   surfaceTintColor: kblack,
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset("assets/p.png"),
                         Text("Post Box",style: TextStyle(fontSize: 14,color: kprimarycolor),)
                       ],
                     ),
                   ),
                 ),
                 Card(
                   elevation: 9,
                   shadowColor: kblack,
                   surfaceTintColor: kblack,
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset("assets/h.png"),
                         Text("Estate",style: TextStyle(fontSize: 14,color: kprimarycolor),)
                       ],
                     ),
                   ),
                 ),
                  Card(
                   elevation: 9,
                   shadowColor: kblack,
                   surfaceTintColor: kblack,
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset("assets/v.png"),
                         Text("Virtual Box",style: TextStyle(fontSize: 14,color: kprimarycolor),)
                       ],
                     ),
                   ),
                 ),
                  Card(
                   elevation: 9,
                   shadowColor: kblack,
                   surfaceTintColor: kblack,
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset("assets/d.png"),
                         Text("Delivery",style: TextStyle(fontSize: 14,color: kprimarycolor),)
                       ],
                     ),
                   ),
                 ),
                  Card(
                   elevation: 9,
                   shadowColor: kblack,
                   surfaceTintColor: kblack,
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset("assets/d.png"),
                         Text("Pickup",style: TextStyle(fontSize: 14,color: kprimarycolor),)
                       ],
                     ),
                   ),
                 ),
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(0),
                // crossAxisSpacing: 5,
                mainAxisSpacing: 2,
                crossAxisCount: 2,
                children: <Widget>[
                 Card(
                   elevation: 9,
                   shadowColor: kblack,
                   surfaceTintColor: kblack,
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset("assets/cas.png"),
                         Text("Postal Cash",style: TextStyle(fontSize: 14,color: kprimarycolor),)
                       ],
                     ),
                   ),
                 ),
                 Card(
                   elevation: 9,
                   shadowColor: kblack,
                   surfaceTintColor: kblack,
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image.asset("assets/f.png"),
                         Text("Control Number",style: TextStyle(fontSize: 14,color: kprimarycolor),)
                       ],
                     ),
                   ),
                 ),

                ],
              ),
              SizedBox(height: 20,),
              Text("Posta News",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: kprimarycolor),),
              SizedBox(height: 10,),
              Divider(
                height: 6,
                thickness: 3,
                color: kyellow,
              ),
              SizedBox(height: 10,),
              CarouselWithDotsPage(imgList: imgList),

            ],
          ),
        ),
      ),
    );
  }
}
