// Copyright (c) <2022> <Fatuma chitu, chitufatuma45@gmail.com>

import 'package:chituposta/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pf extends StatefulWidget {
  const pf({Key? key}) : super(key: key);

  @override
  State<pf> createState() => _pfState();
}

class _pfState extends State<pf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20.0,
        bottom: 20,top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter PF Number",style: TextStyle(fontSize: 14,color: kblack),),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0,bottom: 3,left: 8),
                child: Text("PF number",style: TextStyle(color: kprimarycolor,fontSize: 14),),
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
    );
  }
}
