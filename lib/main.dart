import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yob/core/viewmodel/auth_provider.dart';
import 'package:yob/theme.dart';
import 'package:yob/ui/page/home_page.dart';
import 'package:yob/ui/page/login_page.dart';
import 'package:provider/provider.dart';
import 'package:yob/ui/page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(720, 1280),
      builder: () => MultiProvider(
        providers: [
          ChangeNotifierProvider<AuthProvider>(
            create: (context) => AuthProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Aplikasi YOB!',
          theme: themeData,
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashPage(),
            '/login': (context) => const LoginPage(),
            '/home': (context) => const HomePage(),
          },
        ),
      ),
    );
  }
}
