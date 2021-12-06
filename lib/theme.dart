import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color get primaryColor => const Color(0xff27a298);
Color get secondaryColor => const Color(0xffff9900);
Color get alertColor => const Color(0xffED6363);
Color get priceColor => const Color(0xff2C96F1);
Color get backgroundColor1 => const Color(0xff1F1D2B);
Color get backgroundColor2 => const Color(0xff2B2937);
Color get backgroundColor3 => const Color(0xff242231);
Color get backgroundColor4 => const Color(0xff252836);
Color get primaryTextColor => const Color(0XFF000000);
Color get subtitleColorText => const Color(0xff504F5E);
Color get secondaryTextColor => const Color(0xff999999);
Color get blackColor => const Color(0xff2E2E2E);
Color get inputBackgroundColor => const Color(0xFFf2f5ed);

ThemeData get themeData => ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: primaryColor,
      fontFamily: 'NunitoSans',
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepOrange,
        accentColor: secondaryColor,
        brightness: Brightness.light,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: SharedAxisPageTransitionsBuilder(
            transitionType: SharedAxisTransitionType.horizontal,
          ),
          TargetPlatform.iOS: SharedAxisPageTransitionsBuilder(
            transitionType: SharedAxisTransitionType.horizontal,
          ),
        },
      ),
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: Colors.black87,
      ),
    );

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColorText,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

TextStyle blackColorTextStyle = GoogleFonts.poppins(
  color: blackColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
