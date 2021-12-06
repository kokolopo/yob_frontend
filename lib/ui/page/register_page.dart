import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yob/core/viewmodel/auth_provider.dart';
import 'package:yob/theme.dart';
import 'package:yob/ui/widget/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key? key }) : super(key: key);
  
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
              "Pendaftaran Pengguna Baru",
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
                    viewmodel.name,
                    hint: "Nama Lengkap",
                    prefixIcon: Icon(Icons.person, color: secondaryColor),
                    maxInput: 30,
                  ),
                  InputField(
                    viewmodel.phone,
                    hint: "Nomor Telepon",
                    inputType: TextInputType.phone,
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
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/login',
                      );
                    },
                    child: textFormat(
                      "Sudah punya akun?",
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
                "Daftar",
                28.sp,
                fontColor: Colors.white,
              ),
              onPressed: viewmodel.doRegister,
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
                shape: const StadiumBorder(side: BorderSide.none),
                padding: EdgeInsets.symmetric(
                  horizontal: 132.w,
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
}
