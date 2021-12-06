part of 'widgets.dart';

Widget iconApp() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(50),
    child: Container(
      width: 160.w,
      height: 160.w,
      color: primaryColor,
      child: Image.asset('assets/icons/yob_logo.png'),
    ),
  );
}
