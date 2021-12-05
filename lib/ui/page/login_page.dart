import 'package:flutter/material.dart';
import 'package:yob/theme.dart';
import 'package:yob/ui/page/main_page.dart';
import 'package:yob/ui/page/register_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yob/ui/widget/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _noTlp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 160.w,
              height: 160.w,
              color: primaryColor,
              child: Image.asset('assets/icons/yob_logo.png'),
            ),
          ),
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
      child: Column(
        children: [
          SizedBox(height: 32.h),
          textFormat(
            "Selamat Datang Kembali!",
            32.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _detailFiled(
                  'No. Telpon',
                  Icon(Icons.person, color: secondaryColor),
                  TextInputType.name,
                  _noTlp,
                  false,
                ),
                _detailFiled(
                  'Sandi',
                  Icon(Icons.password, color: secondaryColor),
                  TextInputType.visiblePassword,
                  _pass,
                  true,
                ),
                InkWell(
                  onTap: () {},
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainPage(),
                ),
              );
            },
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
      ),
    );
  }

  Container _detailFiled(
    String tittle,
    Icon icon,
    TextInputType keyType,
    TextEditingController controller,
    bool isPassword,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18.h),
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: tittle,
              suffixIcon: icon,
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 18.h,
              ),
            ),
            keyboardType: keyType,
          ),
        ],
      ),
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
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisPage()),
            );
          },
          child: textFormat(
            "Daftar",
            32.sp,
            fontColor: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
