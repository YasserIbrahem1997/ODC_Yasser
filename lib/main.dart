import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:courses_orange/view/bottomtapbar.dart';
import 'package:courses_orange/view/screens/athur/start_app.dart';
import 'package:courses_orange/view/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

/*--------------------------------you can see details in fille README --------------------------------
* --------------------------------you can see details in fille README --------------------------------
* --------------------------------you can see details in fille README --------------------------------
* --------------------------------you can see details in fille README --------------------------------
*
*
*
* */
void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetMaterialApp(
        title: 'courses Orange',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.robotoCondensedTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AnimatedSplashScreen(
          splash: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/splash.png",
                    height: double.infinity,
                    width:  double.infinity,
                  ),
                ),
          ),
          nextScreen:  StartApp(),
          splashIconSize: double.infinity,
          splashTransition: SplashTransition.fadeTransition,
          duration: 3000,
          pageTransitionType: PageTransitionType.bottomToTop,
        ),
      ),
    );
  }
}

