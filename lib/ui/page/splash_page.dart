import 'package:flutter/material.dart';
import 'package:yob/ui/widget/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Call move page
    toHome(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconApp(size: 240.w),
            SizedBox(height: 24.h),
            textFormat(
              "Yuk Olahraga Bareng!",
              36.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 64.h),
            loadingWidget(widht: 8.w),
          ],
        ),
      ),
    );
  }

  // Move to Home after 3 seconds
  Future<void> toHome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, "/home");
  }

}