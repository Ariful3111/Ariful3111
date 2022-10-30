import 'package:e_bazar/Scoend%20screen.dart';
import 'package:flutter/material.dart';
import 'package:e_bazar/english.dart';
import 'package:e_bazar/bangla.dart';
import 'package:get/get.dart';

class Chat_Screen extends StatelessWidget {
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,//true can hide app bar back button
        title: Text("First-screen"),
      ),
      body: SafeArea(
        child: Column(
          children: [

            ElevatedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (contex)=>Second_screen(),),);
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=>Second_screen(),),);
                Navigator.pushNamed(context, '/second-screen');
              },
              child: Text("first screen"),
            ),
            Center(child: Text('app_name'.tr,style: TextStyle(fontSize: 40),)),
            Center(child: Text('app_title'.tr,style: TextStyle(fontSize: 20),)),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: (){
              Get.updateLocale(Locale('en','us'),);
            }, child: Text('English'),),
            ElevatedButton(onPressed: (){
              Get.updateLocale(Locale('bn','BD'),);
            }, child: Text('Bangla'),),
          ],
        ),
      ),
    );
  }
}
