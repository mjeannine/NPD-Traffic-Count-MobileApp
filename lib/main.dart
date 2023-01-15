import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:npd_traffic_count_app/Auth_screens/login_screen.dart';
import 'package:npd_traffic_count_app/functioning_screens/home.dart';
import 'package:npd_traffic_count_app/functioning_screens/profile.dart';
import 'package:npd_traffic_count_app/functioning_screens/report.dart';
import 'package:npd_traffic_count_app/functioning_screens/traffic_counting.dart';
import 'Auth_screens/splash_screen.dart';
import 'package:npd_traffic_count_app/Auth_screens/signup.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'services/models/token_provider.dart';

void main() {
  runApp(const NpdApp());
}

class NpdApp extends StatelessWidget {
  const NpdApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TokenProvider>(create: (_) {
          return TokenProvider();
        }),
    ],
    
     child:MaterialApp(
      debugShowCheckedModeBanner: false,
          builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          
          ],
          ),
        
        home: SplashScreen(),

        // the routes to navigate through the app
  
        routes: {

        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/counting': (context) => const Traffic_Count(),
        '/profile':(context) => const Profile_Screen(),
        '/report' :(context) => const Report_Screen(),
      },
     ),
    );
      
  
    
  }
}
