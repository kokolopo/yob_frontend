import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yob/core/viewmodel/auth_provider.dart';
import 'package:yob/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yob/ui/widget/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconApp(),
          textFormat(
            "Yuk Olahraga Bareng!",
            30.sp,
          ),
          SizedBox(height: 54.h),
          body(),
          SizedBox(height: 54.h),
          footer()
        ],
      ),
    );
  }

  Widget body() {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.symmetric(horizontal: 32.w),
      child: Consumer<AuthProvider>(builder: (context, viewmodel, _) {
        return Column(
          children: [
            SizedBox(height: 32.h),
            textFormat(
              "Selamat Datang Kembali!",
              32.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InputField(
                    viewmodel.phone,
                    hint: "Nomor Telepon",
                    prefixIcon: Icon(Icons.phone, color: secondaryColor),
                    maxInput: 13,
                  ),
                  InputField(
                    viewmodel.pass,
                    hint: "Password",
                    inputType: TextInputType.visiblePassword,
                    prefixIcon: Icon(Icons.password, color: secondaryColor),
                  ),
                  InkWell(
                    onTap: viewmodel.toForgetPassword,
                    child: textFormat(
                      "Lupa kata sandi?",
                      28.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            ElevatedButton(
              child: textFormat(
                "Masuk",
                28.sp,
                fontColor: Colors.white,
              ),
              onPressed: viewmodel.doLogin,
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: 96.w,
                  vertical: 16.h,
                ),
              ),
            ),
            SizedBox(height: 32.h),
          ],
        );
      }),
    );
  }

  Widget footer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textFormat(
          "Belum memiliki akun ? ",
          30.sp,
          fontWeight: FontWeight.normal,
        ),
        Consumer<AuthProvider>(builder: (context, viewmodel, _) {
          return GestureDetector(
            onTap: viewmodel.toRegister,
            child: textFormat(
              "Daftar",
              32.sp,
              fontColor: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          );
        })
      ],
    );
  }
}
