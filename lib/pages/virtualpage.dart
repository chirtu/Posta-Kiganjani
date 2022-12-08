// Copyright (c) <2022> <Fatuma chitu, chitufatuma45@gmail.com>

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class virtualpage extends StatefulWidget {
  const virtualpage({Key? key}) : super(key: key);

  @override
  State<virtualpage> createState() => _virtualpageState();
}

class _virtualpageState extends State<virtualpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("Enter mobile number",style: TextStyle(fontSize: 14,color: kblack),),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12.0,bottom: 3,left: 20,right: 20),
                          child: Text("mobile number",style: TextStyle(color: kprimarycolor,fontSize: 14),),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: kgrey),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: kprimarycolor,
                        ),
                        child: MaterialButton(onPressed: null,
                          child: Text("Submit",style: TextStyle(color: kwhite,fontSize: 16),),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                child: Container(
                  // margin: EdgeInsets.all(10),
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage("assets/v.png")),
                      Text("Connect to Virtual Box",style: TextStyle(fontSize: 18),),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  _virtual()));
                        },
                          child: Icon(CupertinoIcons.forward,color: kprimarycolor,size: 20,))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ) ,
    );
  }
  _virtual(){
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("Enter Virtual box details to connect",style: TextStyle(fontSize: 14,color: kprimarycolor),),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12.0,bottom: 3,left: 20,right: 20),
                          child: Text("Mobile Number",style: TextStyle(color: kprimarycolor,fontSize: 14),),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: kgrey),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12.0,bottom: 3,left: 20,right: 20),
                          child: Text("Pass code",style: TextStyle(color: kprimarycolor,fontSize: 14),),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: kgrey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                child: Container(
                  // margin: EdgeInsets.all(10),
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(image: AssetImage("assets/v.png")),
                      Text("Connect ",style: TextStyle(fontSize: 18),),
                      InkWell(
                          onTap: null,
                          child: Icon(CupertinoIcons.forward,color: kprimarycolor,size: 20,))
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  virtualpage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 23,),
                  Icon(CupertinoIcons.rectangle_grid_3x2_fill,color: kprimarycolor,),
                  SizedBox(width: 12,),
                  Text("Virtual Box Registration",style: TextStyle(fontSize: 15),)
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
