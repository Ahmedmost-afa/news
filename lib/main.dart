import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home_screen.dart';
import 'package:flutterapp/utils/app_theme.dart';
import 'screens/onBoarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utils/app_theme.dart';



 main()  async{

   WidgetsFlutterBinding.ensureInitialized();
   SharedPreferences prefs = await SharedPreferences.getInstance();
   bool seen = prefs.getBool( 'seen' );
   Widget _screen;
   if( seen == null || seen == false ){
     _screen = OnBoarding();
   }else{
     _screen = HomeScreen();
   }
   runApp( MyApp( _screen ) );
}

class MyApp extends StatelessWidget {
  final Widget _screen;
  MyApp(this._screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home:this._screen,
    );
  }
}
