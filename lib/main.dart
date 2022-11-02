import 'package:e_bazar/Animate.dart';
import 'package:e_bazar/Register-screen.dart';
import 'package:e_bazar/Scoend%20screen.dart';
import 'package:e_bazar/account_screen.dart';
import 'package:e_bazar/bottom_nav_controller.dart';
import 'package:e_bazar/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'bottom_nav_controller.dart';
import 'home_screen.dart';
import 'my_add_screen.dart';
import 'add_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:e_bazar/language.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Box box = await Hive.openBox('add-list');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Language(),
      locale: Locale('en','us'),
      fallbackLocale: Locale('en','us'),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 10,
          centerTitle: true,
          //backwardsCompatibility: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 10,
          //enableFeedback: true,
          //landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.blueAccent,
          // selectedLabelStyle: TextStyle(color: Colors.black,),
          // unselectedLabelStyle: TextStyle(color: Colors.cyanAccent),

        ),
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        floatingActionButtonTheme:
        FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0)
            ),
          ),
        ),
        // textTheme: TextTheme(
        //   headline6: TextStyle(
        //     color: Colors.black,
        //     fontSize: 30,
        //   ),
        //   // bodyText2: TextStyle(
        //   //   fontSize: 25,
        //   // ),
        // ),
        textTheme: GoogleFonts.aladinTextTheme(
          Theme.of(context).textTheme.apply(),
        )

        //backgroundColor: Colors.redAccent,
      ),
      routes: {
        '/first-screen':(context)=>Chat_Screen(),
        '/second-screen':(context)=>Second_screen(),
        '/bottom-navigation-screen':(context)=>BottomNavigationbar(),
        '/Register-screen':(register)=>Register_Screen(),
        '/Account-screen':(register)=>Account_Screen(),
        '/Animate-screen':(register)=>Animate(),
        '/add-screen':(textfilled)=>Add_Screen()
      },
      initialRoute: '/bottom-navigation-screen',
    );
  }
}
