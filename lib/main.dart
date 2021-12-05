import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yob/theme.dart';
import 'package:yob/ui/page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(720, 1280),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Aplikasi YOB!',
          theme: themeData,
          initialRoute: '/login',
          // initialRoute: '/splash',
          routes: {
            // '/splash': (context) => const SplashView(),
            '/login': (context) => const LoginPage(),
          },
        );
      },
    );
  }
}
